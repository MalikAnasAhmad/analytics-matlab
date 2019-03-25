%%
%Analysis of std feature 
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
Feature_Plot = statiticalFeatures(:,4);
Feature_Plot_Ratio = statiticalFeatures(:,5);
Feature_Plot_Rate = statiticalFeatures(:,6);
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
% Feature_Plot = statiticalFeatures(:,1);
Feature_Plot_Ratio = statiticalFeatures(:,2);
Feature_Plot_Rate = statiticalFeatures(:,3);
% plot(Data(1:end-windowSize),'b')
% hold on;
% plot(Feature_Plot(:),'r')
% plot(Feature_Plot_Ratio,'y')
% plot(Feature_Plot_Rate,'g')
% hold off;
% 
% figure(4)
% subplot(4,1,1)
% plot(Data(1:end-windowSize),'b')
% title('Original')
% subplot(4,1,2)
% plot(Feature_Plot(:),'r')
% title('Feature')
% subplot(4,1,3)
% plot(Feature_Plot_Ratio,'y')
% title('Ratio/Gain')
% subplot(4,1,4)
% plot(Feature_Plot_Rate,'g')
% title('RateOfChange/Differential')
% 
% figure(5)
% % For non-overlapping
% % Feature_Plot = repmat(statiticalFeatures(:,1)',windowSize,1);
% % For overlapping
% Feature_Plot = statiticalFeatures(:,13);
% Feature_Plot_Ratio = statiticalFeatures(:,14);
% Feature_Plot_Rate = statiticalFeatures(:,15);
% plot(Data(1:end-windowSize),'b')
% hold on;
% plot(Feature_Plot(:),'r')
% plot(Feature_Plot_Ratio,'y')
% plot(Feature_Plot_Rate,'g')
% hold off;
% 
figure(2)
figure(4)
figure(6)
% subplot(4,1,1)
% plot(Data(1:end-windowSize),'b')
% title('Original')
% subplot(4,1,2)
% plot(Feature_Plot(:),'r')
% title('Feature')
% subplot(4,1,3)
% plot(Feature_Plot_Ratio,'y')
% title('Ratio/Gain')
% subplot(4,1,4)
% plot(Feature_Plot_Rate,'g')
% title('RateOfChange/Differential')

figure(7)
subplot(6,1,1)
plot(Data(1:end-windowSize),'b')
title('Original')
subplot(6,1,2)
plot(Feature_Plot(:),'r')
title('std Feature')
subplot(6,1,3)
plot(Feature_Plot_Rate,'m')
title('Rate of change of Mean ')
subplot(6,1,4)
% plot(std(OverlapWindow(Feature_Plot_Ratio,windowSize),0,2),'y')
plot(diff(Feature_Plot_Rate),'y')
% title('std of Ratio/Gain of Mean ')
title('Rate of change of Rate of change of Mean ')
subplot(6,1,5)
% plot(Feature_Plot_Rate,'g')
plot(median(OverlapWindow(diff(Feature_Plot_Rate),windowSize),2),'g')
% title('RateOfChange/Differential')
title('median of Rate of change of Rate of change of Mean ')
subplot(6,1,6)
plot(std(OverlapWindow(median(OverlapWindow(diff(Feature_Plot_Rate),windowSize),2),windowSize),0,2),'c')
title('std of median of Rate of change of Rate of change of Mean ')