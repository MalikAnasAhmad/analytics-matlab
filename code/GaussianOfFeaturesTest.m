function [gaussianOfFeaturesTest] = GaussianOfFeaturesTest(statiticalFeaturesTest,mean4Gaussian,std4Gaussian,var4Gaussian)

%Gaussian Probability of mean
meanGM = (1/(sqrt(2*pi)*std4Gaussian(1))).*(exp((-(statiticalFeaturesTest(:,1)-mean4Gaussian(1)).^2)./(2*var4Gaussian(1))));
%Gaussian Probability of mean ratio

% meanRatioGM = (1/(sqrt(2*pi)*std4Gaussian(2))).*(exp((-(statiticalFeaturesTest(:,2)-mean4Gaussian(2)).^2)./(2*var4Gaussian(2))));
meanRatioGM = (exp((-(statiticalFeaturesTest(:,2)-mean4Gaussian(2)).^2)./(2*var4Gaussian(2))));
%Gaussian Probability of standard deviation

stdGM = (1/(sqrt(2*pi)*std4Gaussian(3))).*(exp((-(statiticalFeaturesTest(:,3)-mean4Gaussian(3)).^2)./(2*var4Gaussian(3))));

%Gaussian Probability of standard deviation ratio
% stdRatioGM = (1/(sqrt(2*pi)*std4Gaussian(4))).*(exp((-(statiticalFeaturesTest(:,4)-mean4Gaussian(4)).^2)./(2*var4Gaussian(4))));
stdRatioGM = (exp((-(statiticalFeaturesTest(:,4)-mean4Gaussian(4)).^2)./(2*var4Gaussian(4))));
%Gaussian Probability of variance
varGM = (1/(sqrt(2*pi)*std4Gaussian(5))).*(exp((-(statiticalFeaturesTest(:,5)-mean4Gaussian(5)).^2)./(2*var4Gaussian(5))));

%Gaussian Probability of variance ratio
% varRatioGM = (1/(sqrt(2*pi)*std4Gaussian(6))).*(exp((-(statiticalFeaturesTest(:,6)-mean4Gaussian(6)).^2)./(2*var4Gaussian(6))));
varRatioGM = (exp((-(statiticalFeaturesTest(:,6)-mean4Gaussian(6)).^2)./(2*var4Gaussian(6))));

%Gaussian Probability of power
powerGM = (1/(sqrt(2*pi)*std4Gaussian(7))).*(exp((-(statiticalFeaturesTest(:,7)-mean4Gaussian(7)).^2)./(2*var4Gaussian(7))));

%Gaussian Probability of power ratio
% powerRatioGM = (1/(sqrt(2*pi)*std4Gaussian(8))).*(exp((-(statiticalFeaturesTest(:,8)-mean4Gaussian(8)).^2)./(2*var4Gaussian(8))));
powerRatioGM = (exp((-(statiticalFeaturesTest(:,8)-mean4Gaussian(8)).^2)./(2*var4Gaussian(8))));

%Gaussian Probability of median
medianGM = (1/(sqrt(2*pi)*std4Gaussian(9))).*(exp((-(statiticalFeaturesTest(:,9)-mean4Gaussian(9)).^2)./(2*var4Gaussian(9))));

%Gaussian Probability of median ratio
% medianRatioGM = (1/(sqrt(2*pi)*std4Gaussian(10))).*(exp((-(statiticalFeaturesTest(:,10)-mean4Gaussian(10)).^2)./(2*var4Gaussian(10))));
medianRatioGM = (exp((-(statiticalFeaturesTest(:,10)-mean4Gaussian(10)).^2)./(2*var4Gaussian(10))));

%Concatinating all of the Gaussians
gaussianOfFeaturesTest = [meanGM meanRatioGM stdGM stdRatioGM varGM varRatioGM powerGM powerRatioGM medianGM medianRatioGM];