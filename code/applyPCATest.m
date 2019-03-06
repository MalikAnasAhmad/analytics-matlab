function[reducedFeatureTest] = applyPCATest(standardrizedTestData,coef)
reducedFeatureTest = standardrizedTestData * coef;
