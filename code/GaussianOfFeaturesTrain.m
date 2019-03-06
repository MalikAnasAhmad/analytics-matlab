function [gaussianOfFeaturesTrain,mean4Gaussian, std4Gaussian,var4Gaussian] = GaussianOfFeaturesTrain(statiticalFeaturesTrain)

%mean and standard deviation for Gaussian the Test Gaussian Features
mean4Gaussian = mean(statiticalFeaturesTrain);
std4Gaussian = std(statiticalFeaturesTrain,0);
var4Gaussian = var(statiticalFeaturesTrain,0);

%Gaussian Probability of mean
meanGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,1)))).*(exp((-(statiticalFeaturesTrain(:,1)-mean(statiticalFeaturesTrain(:,1))).^2)./(2*var(statiticalFeaturesTrain(:,1)))));
%Gaussian Probability of mean ratio

meanRatioGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,2)))).*(exp((-(statiticalFeaturesTrain(:,2)-mean(statiticalFeaturesTrain(:,2))).^2)./(2*var(statiticalFeaturesTrain(:,2)))));
% meanRatioGM = (exp((-(statiticalFeaturesTrain(:,2)-mean(statiticalFeaturesTrain(:,2))).^2)./(2*var(statiticalFeaturesTrain(:,2)))));
%Gaussian Probability of standard deviation

stdGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,3)))).*(exp((-(statiticalFeaturesTrain(:,3)-mean(statiticalFeaturesTrain(:,3))).^2)./(2*var(statiticalFeaturesTrain(:,3)))));

%Gaussian Probability of standard deviation ratio
stdRatioGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,4)))).*(exp((-(statiticalFeaturesTrain(:,4)-mean(statiticalFeaturesTrain(:,4))).^2)./(2*var(statiticalFeaturesTrain(:,4)))));
% stdRatioGM = (exp((-(statiticalFeaturesTrain(:,4)-mean(statiticalFeaturesTrain(:,4))).^2)./(2*var(statiticalFeaturesTrain(:,4)))));

%Gaussian Probability of variance
varGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,5)))).*(exp((-(statiticalFeaturesTrain(:,5)-mean(statiticalFeaturesTrain(:,5))).^2)./(2*var(statiticalFeaturesTrain(:,5)))));

%Gaussian Probability of variance ratio
varRatioGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,6)))).*(exp((-(statiticalFeaturesTrain(:,6)-mean(statiticalFeaturesTrain(:,6))).^2)./(2*var(statiticalFeaturesTrain(:,6)))));
% varRatioGM = (exp((-(statiticalFeaturesTrain(:,6)-mean(statiticalFeaturesTrain(:,6))).^2)./(2*var(statiticalFeaturesTrain(:,6)))));

%Gaussian Probability of power
powerGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,7)))).*(exp((-(statiticalFeaturesTrain(:,7)-mean(statiticalFeaturesTrain(:,7))).^2)./(2*var(statiticalFeaturesTrain(:,7)))));

%Gaussian Probability of power ratio
powerRatioGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,8)))).*(exp((-(statiticalFeaturesTrain(:,8)-mean(statiticalFeaturesTrain(:,8))).^2)./(2*var(statiticalFeaturesTrain(:,8)))));
% powerRatioGM = (exp((-(statiticalFeaturesTrain(:,8)-mean(statiticalFeaturesTrain(:,8))).^2)./(2*var(statiticalFeaturesTrain(:,8)))));

%Gaussian Probability of median
medianGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,9)))).*(exp((-(statiticalFeaturesTrain(:,9)-mean(statiticalFeaturesTrain(:,9))).^2)./(2*var(statiticalFeaturesTrain(:,9)))));

%Gaussian Probability of median ratio
medianRatioGM = (1/(sqrt(2*pi)*std(statiticalFeaturesTrain(:,10)))).*(exp((-(statiticalFeaturesTrain(:,10)-mean(statiticalFeaturesTrain(:,10))).^2)./(2*var(statiticalFeaturesTrain(:,10)))));
% medianRatioGM = (exp((-(statiticalFeaturesTrain(:,10)-mean(statiticalFeaturesTrain(:,10))).^2)./(2*var(statiticalFeaturesTrain(:,10)))));

%Concatinating all of the Gaussians
gaussianOfFeaturesTrain = [meanGM meanRatioGM stdGM stdRatioGM varGM varRatioGM powerGM powerRatioGM medianGM medianRatioGM];