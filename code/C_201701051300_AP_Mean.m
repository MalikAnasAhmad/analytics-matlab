%%
%Analysis of mean vs median feature 
% for spike glitch
% %
% Read_Pseudo_201612281400
% Data = Pseudo_Value;
C_20170104_test_Data
% C_20170104_test_Data_Kurtosis
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
Feature_Plot = statiticalFeatures(:,1);
Feature_Plot_Ratio = statiticalFeatures(:,2);
Feature_Plot_Rate = statiticalFeatures(:,3);
subplot(4,1,1)
plot(Data(1:end-windowSize),'b')
title('original data')
subplot(4,1,2)
plot(Feature_Plot(:),'r')
title('mean')
subplot(4,1,3)
plot(Feature_Plot_Ratio,'y')
title('Ratio Gain of mean')
subplot(4,1,4)
plot(Feature_Plot_Rate,'g')
title('Rate of change of mean')

figure(2)
Feature_Plot = statiticalFeatures(:,13);
Feature_Plot_Ratio = statiticalFeatures(:,14);
Feature_Plot_Rate = statiticalFeatures(:,15);
subplot(4,1,1)
plot(Data(1:end-windowSize),'b')
title('original data')
subplot(4,1,2)
plot(Feature_Plot(:),'r')
title('median')
subplot(4,1,3)
plot(Feature_Plot_Ratio,'y')
title('Ratio Gain of median')
subplot(4,1,4)
plot(Feature_Plot_Rate,'g')
title('Rate of change of median')


figure(3)
Feature_Plot = statiticalFeatures(:,13);
Feature_Plot_Ratio = statiticalFeatures(:,14);
Feature_Plot_Rate = statiticalFeatures(:,15);
subplot(7,1,1)
plot(Data(1:end-windowSize),'b')
title('original data')
subplot(7,1,2)
plot(statiticalFeatures(:,1),'r')
title('mean')
subplot(7,1,3)
plot(statiticalFeatures(:,13),'r')
title('median')
subplot(7,1,4)
plot(statiticalFeatures(:,1) - statiticalFeatures(:,13),'r')
title('mean - median')
subplot(7,1,5)
A = mode(OverlapWindow(statiticalFeatures(:,1),windowSize),2);
% A = mode(OverlapWindow(Data,windowSize),2);
% B = statiticalFeatures(26:end,13);
C = mode(OverlapWindow(statiticalFeatures(:,13),windowSize),2);
plot(A)
title('mode of mean')
subplot(7,1,6)
plot(C)
title('mode of median')
subplot(7,1,7)
plot(median(OverlapWindow(A-C,windowSize),2),'r')
% plot((A(1:end-2) - C(3:end)),'r')
% plot((A - B(numel(B)-numel(A)+1:end)),'r')
% plot((B - A(numel(B)-numel(A)+3:end)),'r')
% plot(OverlapWindow(statiticalFeatures(:,1) - statiticalFeatures(:,13),windowSize),'r')
title('difference')

% figure(4)
% subplot(3,1,1)
% plot(A)
% subplot(3,1,2)
% plot(B)
% subplot(3,1,3)
% plot(mode(OverlapWindow(B,windowSize),2))
% figure(2)
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
% figure(3)
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
% Feature_Plot = statiticalFeatures(:,13)-statiticalFeatures(:,1);
% Feature_Plot_Ratio = statiticalFeatures(:,14)-1*statiticalFeatures(:,2);
% Feature_Plot_Rate = statiticalFeatures(:,15)-1*statiticalFeatures(:,3);
% plot(Data(1:end-windowSize),'b')
% hold on;
% plot(Feature_Plot(:),'r')
% plot(Feature_Plot_Ratio,'y')
% plot(Feature_Plot_Rate,'g')
% hold off;
% 
% figure(2)
% figure(4)
% figure(6)
% subplot(6,1,1)
% plot(Data(1:end-windowSize),'b')
% title('Original')
% subplot(7,1,2)
% plot(statiticalFeatures(:,3),'g')
% title('Mean Feature RateOfChange/Differential')
% subplot(7,1,3)
% plot(statiticalFeatures(:,15),'g')
% title('Median Feature RateOfChange/Differential')
% subplot(7,1,4)
% plot(statiticalFeatures(:,15)-(max(statiticalFeatures(:,15))/max(statiticalFeatures(:,3)))*statiticalFeatures(:,3),'g')
% title('Mean Feature RateOfChange/Differential - Median Feature RateOfChange/Differential')
% subplot(7,1,5)
% plot(statiticalFeatures(:,2),'y')
% title('Mean Feature Ratio/Gain')
% subplot(7,1,6)
% plot(statiticalFeatures(:,14),'y')
% title('Median Feature Ratio/Gain')
% subplot(7,1,7)
% plot(statiticalFeatures(:,14)-(max(statiticalFeatures(:,15))/max(statiticalFeatures(:,3)))*statiticalFeatures(:,2),'y')
% title('Mean Feature Ratio/Gain - Median Feature Ratio/Gain')