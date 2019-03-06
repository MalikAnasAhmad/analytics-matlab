%%
%Analysis of feature 
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
% Feature_Plot = repmat(statiticalFeatures(:,13)',windowSize,1);
% For overlapping
Feature_Plot = statiticalFeatures(:,7);
Feature_Plot_Ratio = statiticalFeatures(:,8);
Feature_Plot_Rate = statiticalFeatures(:,9);
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