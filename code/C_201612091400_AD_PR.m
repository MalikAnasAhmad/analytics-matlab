%  Technique_2_old
% Read_Voltage_201612091400
% Read_Current_201612091400
% Read_Moisture_201612091400
% Read_Pressure_201612091400
% E = cdfepoch(Epoch_Time(1))

% dt = datetime( Epoch_Time(100:110), 'ConvertFrom', 'posixtime' );
% dt = datetime(Epoch_Time(100:110),'ConvertFrom','epochtime','Epoch','1970-01-01');
% datestr( dt )
windowSize = 100;
voltageWindowed = reshape(voltage(1:floor(numel(voltage)/windowSize)*windowSize),windowSize,floor(numel(voltage)/windowSize))';
% clear voltage
meanVoltage = mean(voltageWindowed,2);
meanVoltageRatio = meanVoltage(1:end-1)./meanVoltage(2:end);
stdVoltage = std(voltageWindowed,0,2);
stdVoltageRatio = stdVoltage(1:end-1)./stdVoltage(2:end);
varVoltage = var(voltageWindowed,0,2);
varVoltageRatio = varVoltage(1:end-1)./varVoltage(2:end);
powerVoltage = sum((voltageWindowed.*voltageWindowed),2)./size(voltageWindowed,2);
powerVoltageRatio = powerVoltage(1:end-1)./powerVoltage(2:end);
medianVoltage = median(voltageWindowed,2);
medianVoltageRatio = medianVoltage(1:end-1)./medianVoltage(2:end);

TrainIndex=(1:size(voltageWindowed,1))';
TestIndex = unique(ceil(rand(ceil(size(voltageWindowed,1)/2),1).*size(voltageWindowed,1)));
TrainIndex(TestIndex) = [];
%%
%Removing the highest index from the list in order to accomodate the Ratio
TrainIndex(find(TrainIndex==size(voltageWindowed,1)))=[];
TestIndex(find(TestIndex==size(voltageWindowed,1)))=[];

%%
%Labels assignment
Labels = ones(size(voltageWindowed,1),1);

% Labels(1:100) = 0;
% Labels(end-99:end) = 0;

TrainLabels = Labels(TrainIndex);
TestLabels = Labels(TestIndex);
%%
%concatinating the Features
Features = [meanVoltage(1:end-1) meanVoltageRatio stdVoltage(1:end-1) stdVoltageRatio varVoltage(1:end-1) varVoltageRatio powerVoltage(1:end-1) powerVoltageRatio medianVoltage(1:end-1) medianVoltageRatio];

%%
% Normalization
mean2Norm = mean(Features(TrainIndex,:));
std2Norm = std(Features(TrainIndex,:));

standFeaturesTrain = zscore(Features(TrainIndex,:));
%%
% Reduction using PCA
[coef, score, latent] = princomp(standFeaturesTrain);
FeatureNumber = [1 2];
reducedFeature = score(:,FeatureNumber);
%%
% Train

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = 'trainscg';  % Scaled conjugate gradient backpropagation.

% Create a Pattern Recognition Network
hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Train the Network
[net,tr] = train(net,reducedFeature',TrainLabels');
%%
%Test
standFeaturesTest = (((Features(TestIndex, :) - repmat(mean2Norm,numel(TestIndex),1))./(repmat(std2Norm,numel(TestIndex),1))) * coef);
% Test the Network
OutputLabels = net(standFeaturesTest(:,[1 2])');
% y = net(x);
e = gsubtract(TestLabels',OutputLabels);
% e = gsubtract(t,y);
performance = perform(net,TestLabels',OutputLabels);
% performance = perform(net,t,y)
TestLabelsind = vec2ind(TestLabels');
% tind = vec2ind(t);
OutputLabelsind = vec2ind(OutputLabels);
% yind = vec2ind(y);
percentErrors = sum(TestLabelsind ~= OutputLabelsind)/numel(TestLabelsind);
% percentErrors = sum(tind ~= yind)/numel(tind);