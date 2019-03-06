function [GOF] = GaussianOfFeaturesTest(Features,mean4Gaussian,std4Gaussian,var4Gaussian)

GOF = zeros(size(Features));
for FeatureIndex = 1: size(Features,2)
    if(max(abs(Features(:,FeatureIndex)))>35)
        GOF(:,FeatureIndex) = (1/(sqrt(2*pi)*std4Gaussian(FeatureIndex))).*(exp((-(Features(:,FeatureIndex)-mean4Gaussian(FeatureIndex)).^2)./(2*var4Gaussian(FeatureIndex))));
    else
        GOF(:,FeatureIndex) = (exp((-(Features(:,FeatureIndex)-mean4Gaussian(FeatureIndex)).^2)./(2*var4Gaussian(FeatureIndex))));
        FeatureIndex
    end
end
% meanGM = (1/(sqrt(2*pi)*std4Gaussian(1))).*(exp((-(statiticalFeaturesTest(:,1)-mean4Gaussian(1)).^2)./(2*var4Gaussian(1))));