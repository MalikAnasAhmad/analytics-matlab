%%
%Technique#3 for Pesudo Data
%
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
DataLabels = (sum(NonOverlapWindow(Pseudo_Labels,windowSize),2)>floor(windowSize/2))';
Labels = DataLabels;
% Labels = ones(size(DataWindow,1),1);
% TrainLabels = Labels(TrainIndex);
% TestLabels = Labels(TestIndex);
%%
%Gaussian of the Train features
% [~,var4Gaussian,std4Gaussian] = GaussianOfFeaturesTrain(statiticalFeatures(TrainIndex,:));
[~,mean4Gaussian, std4Gaussian,var4Gaussian] = GaussianOfFeaturesTrain(statiticalFeatures(TrainIndex(find(Labels(TrainIndex))),:));
%%
%Gaussian of the Test features 
[gaussianOfFeaturesTest] = GaussianOfFeaturesTest(statiticalFeatures(TestIndex,:),mean4Gaussian, std4Gaussian,var4Gaussian);
%%
% Thresholding
OutputLabels = (sum(gaussianOfFeaturesTest')>5);
%Result
[percentErrors, error] = Result(Labels(TestIndex),OutputLabels);
percentErrors
% performance = perform(net,TestLabels',OutputLabels);