%% uploading data

C_20170104_test_Data_Kurtosis

%% windowing it

windowSize = 60;

%% making overlapping windows

DataWindow = OverlapWindow(Data,windowSize);

%% Calculating Statistical Feature for each window

Features = StatiticalFeatures_201703121336(DataWindow,windowSize);

figure(1),

subplot(4,1,1)
plot(Data((windowSize*5)-2:end))
xlim([1 size(Features,1)])
title('Original Input Data')

subplot(4,1,2)
image(Features'),
colormap(gray(256))
title('Features')

Labels_Relevant = Labels(numel(Labels)-size(Features,1)+1 : numel(Labels));
% Labels_Relevant = Labels(1 : size(Features,1));

%% Gaussian

[~,mean4Gaussian, std4Gaussian,var4Gaussian] = GaussianOfFeaturesTrain_201703131734(Features(find(Labels_Relevant>=0),:));

% GaussianOfFeaturesTrain(Features)

[GOF] = GaussianOfFeaturesTest_201703131734(Features,mean4Gaussian,std4Gaussian,var4Gaussian);

subplot(4,1,3)
GOF_sum = sum(GOF,2,'omitnan');
plot(GOF_sum),
title('GOF')

subplot(4,1,4)
Class = (GOF_sum > 13);% drived from hit and trial method
plot(Class),
title('Thresholded GOF')
% plotconfusion(Class,(Labels_Relevant>=0))
CM = confusionmat(Class,(Labels_Relevant>=0))
(CM(1,1)+ CM(2,2))/sum(sum(CM))