function [StandardrizedTestData] = TestStandardrization(statiticalFeaturesTest,mean2Norm,std2Norm)

StandardrizedTestData = ((statiticalFeaturesTest - repmat(mean2Norm,size(statiticalFeaturesTest,1),1))./(repmat(std2Norm,size(statiticalFeaturesTest,1),1)));