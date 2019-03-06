function [reducedFeature, coef, score, latent, FeatureNumber] = applyPCATrain(standardrizedTrainData)
%applying PCA
[coef, score, latent] = princomp(standardrizedTrainData);
%finding out the number of features which have the distributions above 99%
FeatureNumber = 1:max(find(((sum(triu(repmat(latent,1,10)))-max(sum(triu(repmat(latent,1,10)))))<-.01)));
%Reduced features
reducedFeature = score(:,FeatureNumber);