%%
%Technique#1
%%
%Read Serial Data
Read_Voltage_201612091400
Data = voltage;
%%
% Define window size
windowSize = 100;
%%
% making non-overlapping windows
DataWindow = NonOverlapWindow(Data,windowSize);%%
% Statistical features
statiticalFeatures = StatiticalFeatures(DataWindow);

statiticalFeatures_Ratio = statiticalFeatures(1:end-1,:)./statiticalFeatures(2:end,:);

NumberOfFeatures = size(statiticalFeatures,2);
Tolerance = NumberOfFeatures * 0.5;
statiticalFeatures_Ratio_Peak_change = (sum(abs(statiticalFeatures_Ratio),2)>(NumberOfFeatures+Tolerance));
Bad_Index = find(sum(abs(statiticalFeatures_Ratio),2)>(NumberOfFeatures+Tolerance));
Good_Index = 1:size(statiticalFeatures_Ratio,1);
Good_Index(Bad_Index) = [];
figure(1)
stem(Good_Index,statiticalFeatures_Ratio(Good_Index,2),'b')
hold on
stem(Bad_Index,statiticalFeatures_Ratio(Bad_Index,2),'r')
hold off