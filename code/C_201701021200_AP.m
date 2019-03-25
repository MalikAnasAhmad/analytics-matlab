%%
%Analysis of mean feature 
% %
% Read_Pseudo_201612281400
% Data = Pseudo_Value;
C_20170104_test_Data
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
% 
% %%
% %Labels assignment
% DataLabels = (sum(OverlapWindow(Pseudo_Labels,windowSize),2)>floor(windowSize/2))';
% Labels = DataLabels(3:end);
% %%
% % Ratio of statiticalFeatures_Ratio
% % statiticalFeatures_Ratio = statiticalFeatures(1:end-1,:)./statiticalFeatures(2:end,:);
% statiticalFeatures_Rate = diff(statiticalFeatures);
% 
% NumberOfFeatures = size(statiticalFeatures,2);
% Tolerance = NumberOfFeatures * 0.5;
% % statiticalFeatures_Ratio_Peak_change
% % OutputLabels = (sum(abs(statiticalFeatures_Ratio),2)>(NumberOfFeatures+Tolerance));
% % Bad_Index = find(sum(abs(statiticalFeatures_Ratio),2)>(NumberOfFeatures+Tolerance));
% % Good_Index = 1:size(statiticalFeatures_Ratio,1);
% 
% OutputLabels = (sum(abs(statiticalFeatures_Rate),2)>(NumberOfFeatures+Tolerance));
% Bad_Index = find(sum(abs(statiticalFeatures_Rate),2)>(NumberOfFeatures+Tolerance));
% Good_Index = 1:size(statiticalFeatures_Rate,1);
% 
% Good_Index(Bad_Index) = [];
% 
% figure(1)
% % stem(Good_Index,statiticalFeatures_Ratio(Good_Index,2),'b')
% stem(Good_Index,statiticalFeatures_Rate(Good_Index,2),'b')
% hold on
% % stem(Bad_Index,statiticalFeatures_Ratio(Bad_Index,2),'r')
% stem(Bad_Index,statiticalFeatures_Rate(Bad_Index,2),'r')
% hold off
% %Result
% [percentErrors, error] = Result(Labels',OutputLabels);
% percentErrors