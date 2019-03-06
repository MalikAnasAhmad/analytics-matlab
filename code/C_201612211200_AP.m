%%
%Technique#3
%Changes from the originally proposed one
% clear all

%%
%Read Serial Data
Read_Voltage_201612091400
Data = voltage;
%%
% Define window size
windowSize = 100;
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
Labels = ones(size(DataWindow,1),1);
% TrainLabels = Labels(TrainIndex);
% TestLabels = Labels(TestIndex);
%%
%Gaussian of the Train features
[~,mean4Gaussian, std4Gaussian,var4Gaussian] = GaussianOfFeaturesTrain(statiticalFeatures(TrainIndex(find(Labels(TrainIndex))),:));
%%
%Gaussian of the Test features 
[gaussianOfFeaturesTest] = GaussianOfFeaturesTest(statiticalFeatures(TestIndex,:),mean4Gaussian, std4Gaussian,var4Gaussian);
%%
% Thresholding
OutputLabels = (sum(gaussianOfFeaturesTest')>5);
%Result
[percentErrors, error] = Result(Labels(TestIndex)',OutputLabels);
percentErrors
% performance = perform(net,TestLabels',OutputLabels);