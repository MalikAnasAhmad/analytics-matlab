function [StatiticalFeatures] = StatiticalFeatures(DataWindow)
% Mean
mean_Data = mean(DataWindow,2);

% Ratio of Mean of two consecutive windows
mean_DataRatio = mean_Data(2:end)./mean_Data(1:end-1);

%Rate of change of two consecutive windows
mean_DataRate = diff(mean_Data);

% Standard deviation
std_Data = std(DataWindow,0,2);

% Ratio of Standard deviation of two consecutive windows
std_DataRatio = std_Data(2:end)./std_Data(1:end-1);

%Rate of Standard deviation of two consecutive windows
std_DataRate = diff(std_Data);

%Variance
var_Data = var(DataWindow,0,2);

%Ratio of Variance of two consecutive windows
var_DataRatio = var_Data(2:end)./var_Data(1:end-1);

%Rate of Variance of two consecutive windows
var_DataRate = diff(var_Data);

%Power
power_Data = sum((DataWindow.*DataWindow),2)./size(DataWindow,2);

%Ratio of Power of two consecutive windows
power_DataRatio = power_Data(2:end)./power_Data(1:end-1);

%Rate of Power of two consecutive windows
power_DataRate = diff(power_Data);

% Median
median_Data = median(DataWindow,2);

%Ratio of Median of two consecutive windows
median_DataRatio = median_Data(2:end)./median_Data(1:end-1);

%Rate of Median of two consecutive windows
median_DataRate = diff(median_Data);

StatiticalFeatures = [mean_Data(1:end-1) mean_DataRatio mean_DataRate std_Data(1:end-1) std_DataRatio std_DataRate var_Data(1:end-1) var_DataRatio var_DataRate power_Data(1:end-1) power_DataRatio power_DataRate median_Data(1:end-1) median_DataRatio median_DataRate];