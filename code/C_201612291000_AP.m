% clear all
%Technique#2 for Pesudo Data
%%
%Read Serial Data
Read_Pseudo_201612281400
Data = Pseudo_Value;
%%
% Define window size
windowSize = 50;
%%
% making non-overlapping windows
DataWindow = NonOverlapWindow(Data,windowSize);
%%
% Statistical features
statiticalFeatures = StatiticalFeatures(DataWindow);

%%
% Train and Test Data
[TrainIndex,TestIndex] = TrainAndTestDataDistribution(size(DataWindow,1));
%%
%Labels assignment
Labels = DataLabels;
% Labels = ones(size(DataWindow,1),1);
% TrainLabels = Labels(TrainIndex);
% TestLabels = Labels(TestIndex);
%%
%Gaussian of the Train features
% [gaussianOfFeaturesTrain,mean4Gaussian, std4Gaussian,var4Gaussian] = GaussianOfFeaturesTrain(statiticalFeatures(TrainIndex(find(Labels(TrainIndex))),:));
%%
%Standardization of Train Data
[standardrizedTrainData,mean2Norm,std2Norm] = TrainStandardization(statiticalFeatures(TrainIndex,:));
%%
%Reduction using PCA
[reducedFeatureTrain, coef, score, latent, FeatureNumber] = applyPCATrain(standardrizedTrainData);
%%
%Train Neural Net
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
TrainFunction = 'trainbr';
HiddenLayers = 10;
net = TrainNN(reducedFeatureTrain', Labels(TrainIndex), HiddenLayers, TrainFunction);
%%
% Testing
%%
%Gaussian of the Test features 
% [gaussianOfFeaturesTest] = GaussianOfFeaturesTest(statiticalFeatures(TestIndex,:),mean4Gaussian, std4Gaussian,var4Gaussian);
%%
%standardization of Test Data
standardrizedTestData = TestStandardrization(statiticalFeatures(TestIndex,:),mean2Norm,std2Norm);
%%
%Applying PCA
reducedFeatureTest = applyPCATest(standardrizedTestData,coef);
%%
%Applying NN for Test
OutputLabels = net(reducedFeatureTest(:,FeatureNumber)');
%%
%Result
[percentErrors, error] = Result(Labels(TestIndex),OutputLabels);
percentErrors
% performance = perform(net,TestLabels',OutputLabels);