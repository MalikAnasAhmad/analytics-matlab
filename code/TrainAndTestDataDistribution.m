function [TrainIndex,TestIndex] = TrainAndTestDataDistribution(FeatureLength)

TrainIndex=(1:FeatureLength)';
TestIndex = unique(ceil(rand(ceil(FeatureLength/2),1).*FeatureLength));
TrainIndex(TestIndex) = [];

%Removing the highest index from the list in order to accomodate the Ratio
TrainIndex(find(TrainIndex==FeatureLength))=[];
TestIndex(find(TestIndex==FeatureLength))=[];