%%
%Analysis of power feature 
% %
% Read_Pseudo_201612281400
% Data = Pseudo_Value;
C_20170104_test_Data_power
%%
% Define window size
windowSize = 60;
%%
% making non-overlapping windows
% DataWindow = NonOverlapWindow(Data,windowSize);%%
%%
% making overlapping windows
DataWindow = OverlapWindow(Data,windowSize);%%

% Statistical features
statiticalFeatures = StatiticalFeatures(DataWindow);


figure(1)
% For non-overlapping
% Feature_Plot = repmat(statiticalFeatures(:,1)',windowSize,1);
% For overlapping
Feature_Plot = statiticalFeatures(:,10);
Feature_Plot_Ratio = statiticalFeatures(:,11);
Feature_Plot_Rate = statiticalFeatures(:,12);
plot(Data(1:end-windowSize),'b')
hold on;
plot(Feature_Plot(:),'r')
plot(Feature_Plot_Ratio,'y')
plot(Feature_Plot_Rate,'g')
hold off;

figure(2)
subplot(4,1,1)
plot(Data(1:end-windowSize),'b')
title('Original')
subplot(4,1,2)
plot(Feature_Plot(:),'r')
title('Feature')
subplot(4,1,3)
plot(Feature_Plot_Ratio,'y')
title('Ratio/Gain')
subplot(4,1,4)
plot(Feature_Plot_Rate,'g')
title('RateOfChange/Differential')

% figure(3)
% % For non-overlapping
% % Feature_Plot = repmat(statiticalFeatures(:,1)',windowSize,1);
% % For overlapping
Feature_Plot = statiticalFeatures(:,4);
Feature_Plot_Ratio = statiticalFeatures(:,5);
Feature_Plot_Rate = statiticalFeatures(:,6);
% plot(Data(1:end-windowSize),'b')
% hold on;
% plot(Feature_Plot(:),'r')
% plot(Feature_Plot_Ratio,'y')
% plot(Feature_Plot_Rate,'g')
% hold off;
% 
figure(4)
subplot(4,1,1)
plot(Data(1:end-windowSize),'b')
title('Original')
subplot(4,1,2)
plot(Feature_Plot(:),'r')
title('Std Feature')
subplot(4,1,3)
plot(Feature_Plot_Ratio,'y')
title('Std Ratio/Gain')
subplot(4,1,4)
plot(Feature_Plot_Rate,'g')
title('Std RateOfChange/Differential')
% 
% % figure(5)
% % % For non-overlapping
% % % Feature_Plot = repmat(statiticalFeatures(:,1)',windowSize,1);
% % % For overlapping
Feature_Plot = statiticalFeatures(:,1);
Feature_Plot_Ratio = statiticalFeatures(:,2);
Feature_Plot_Rate = statiticalFeatures(:,3);
% % plot(Data(1:end-windowSize),'b')
% % hold on;
% % plot(Feature_Plot(:),'r')
% % plot(Feature_Plot_Ratio,'y')
% % plot(Feature_Plot_Rate,'g')
% % hold off;
% % 
figure(2)
figure(4)
figure(6)
subplot(4,1,1)
plot(Data(1:end-windowSize),'b')
title('Original')
subplot(4,1,2)
plot(Feature_Plot(:),'r')
title('Mean Feature')
subplot(4,1,3)
plot(Feature_Plot_Ratio,'y')
title('Mean Ratio/Gain')
subplot(4,1,4)
plot(Feature_Plot_Rate,'g')
title('Mean RateOfChange/Differential')

figure(7)
subplot(7,1,1)
plot(Data(1:end-windowSize),'b')
title('Original')

subplot(7,1,2)
plot(statiticalFeatures(:,1),'r')
title('Mean Feature')

subplot(7,1,3)
plot(statiticalFeatures(:,10),'m')
title('Power Feature ')

subplot(7,1,4)
plot(((sqrt(statiticalFeatures(:,10))./1 - (statiticalFeatures(:,1).*1))>0).*((sqrt(statiticalFeatures(:,10))./1 - (statiticalFeatures(:,1).*1))),'y')
title('difference between Mean Feature and  sqrt of Power Feature')

subplot(7,1,5)
plot(statiticalFeatures(:,4),'g')
title('Std Feature')

subplot(7,1,6)
dBMeanAndPowerSqrt = ((sqrt(statiticalFeatures(:,10))./1 - (statiticalFeatures(:,1).*1))>0).*((sqrt(statiticalFeatures(:,10))./1 - (statiticalFeatures(:,1).*1)));
% dB_dBMeanAndPowerSqrt_AndStdSqrt = (sqrt(statiticalFeatures(:,4)).*1.71) - dBMeanAndPowerSqrt;
% scalingFactor = ((max(dBMeanAndPowerSqrt)./max(sqrt(statiticalFeatures(:,4))))/2)^2;
scalingFactor  = 1.71;%precise
dB_dBMeanAndPowerSqrt_AndStdSqrt = (sqrt(statiticalFeatures(:,4)).*scalingFactor) - dBMeanAndPowerSqrt;
dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh = (dB_dBMeanAndPowerSqrt_AndStdSqrt>0).*dBMeanAndPowerSqrt;
plot(dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh,'c')
title('difference between Std Feature difference between Mean Feature and  sqrt of Power Feature')

dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh_Median_Thresh = median(OverlapWindow(dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh,windowSize),2);
subplot(7,1,7)
plot((dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh_Median_Thresh>(max(dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh_Median_Thresh)/2)).*dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh_Median_Thresh,'k')
title('Thresholded after Median filter')
% subplot(6,1,5)
% % plot(Feature_Plot_Rate,'g')
% % plot(median(OverlapWindow(diff(Feature_Plot_Rate),windowSize),2),'g')
% plot(statiticalFeatures(:,13),'g')
% % title('RateOfChange/Differential')
% % title('median of Rate of change of Rate of change of Mean ')
% title('Median')
% subplot(6,1,6)
% % plot(std(OverlapWindow(median(OverlapWindow(diff(Feature_Plot_Rate),windowSize),2),windowSize),0,2),'c')
% % title('std of median of Rate of change of Rate of change of Mean ')
% plot(((sqrt(statiticalFeatures(:,10)) - (statiticalFeatures(:,13).*1))>0).*((sqrt(statiticalFeatures(:,10)) - (statiticalFeatures(:,13).*1))),'c')
% title('difference between scaled Median and Power')