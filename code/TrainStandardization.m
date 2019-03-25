function [StandardrizedTrainData,mean2Norm,std2Norm] = TrainStandardization(statiticalFeaturesTrain)
%mean and standard deviation for normalization the Test Features
mean2Norm = mean(statiticalFeaturesTrain);
std2Norm = std(statiticalFeaturesTrain,0);
%applying Zscore normalization
StandardrizedTrainData = zscore(statiticalFeaturesTrain);