function [Features] = StatiticalFeatures_201703121336(DataWindow,windowSize)

% Mean
mean_Data = mean(DataWindow,2);

% Ratio of Mean of two consecutive windows
mean_DataRatio = mean_Data(2:end)./mean_Data(1:end-1);

%Rate of change of two consecutive windows
mean_DataRate = diff(mean_Data);

% Median
median_Data = median(DataWindow,2);

%Ratio of Median of two consecutive windows
median_DataRatio = median_Data(2:end)./median_Data(1:end-1);

%Rate of Median of two consecutive windows
median_DataRate = diff(median_Data);

%spike detection
modeOfMean = mode(OverlapWindow(mean_Data,windowSize),2);
modeOfMedian = mode(OverlapWindow(median_Data,windowSize),2);
Spike_Detection = median(OverlapWindow(modeOfMean-modeOfMedian,windowSize),2);

% Standard deviation
std_Data = std(DataWindow,0,2);

% Ratio of Standard deviation of two consecutive windows
std_DataRatio = std_Data(2:end)./std_Data(1:end-1);

% Rate of Standard deviation of two consecutive windows
std_DataRate = diff(std_Data);

% Turbulant vibration detection
Turbulant_Vibration_Detection = std(OverlapWindow(median(OverlapWindow(diff(mean_DataRate),windowSize),2),windowSize),0,2);

% Variance
var_Data = var(DataWindow,0,2);

% Ratio of Variance of two consecutive windows
var_DataRatio = var_Data(2:end)./var_Data(1:end-1);

% Rate of Variance of two consecutive windows
var_DataRate = diff(var_Data);

% Power
power_Data = sum((DataWindow.*DataWindow),2)./size(DataWindow,2);

% Ratio of Power of two consecutive windows
power_DataRatio = power_Data(2:end)./power_Data(1:end-1);

% Rate of Power of two consecutive windows
power_DataRate = diff(power_Data);

% periodic signal detection

dBMeanAndPowerSqrt = ((sqrt(power_Data)./1 - (mean_Data.*1))>0).*((sqrt(power_Data)./1 - (mean_Data.*1)));
scalingFactor = ((max(dBMeanAndPowerSqrt)./max(sqrt(std_Data)))/2)^2;
% scalingFactor  = 1.71;%precise
dB_dBMeanAndPowerSqrt_AndStdSqrt = (sqrt(std_Data).*scalingFactor) - dBMeanAndPowerSqrt;
dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh = (dB_dBMeanAndPowerSqrt_AndStdSqrt>0).*dBMeanAndPowerSqrt;
% Periodic_detector_Raw = dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh;
dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh_Median_Thresh = median(OverlapWindow(dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh,windowSize),2);
Periodic_detector = (dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh_Median_Thresh>(max(dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh_Median_Thresh)/2)).*dB_dBMeanAndPowerSqrt_AndStdSqrt_Thresh_Median_Thresh;

% Median
median_Data = median(DataWindow,2);

%Ratio of Median of two consecutive windows
median_DataRatio = median_Data(2:end)./median_Data(1:end-1);

%Rate of Median of two consecutive windows
median_DataRate = diff(median_Data);

%Skewness
skewness_Data = skewness(DataWindow');

%Ratio of skewness of two consecutive windows
skewness_DataRatio = skewness_Data(2:end)./skewness_Data(1:end-1);

%Rate of skewness of two consecutive windows
skewness_DataRate = diff(skewness_Data);

% trending turbulant vibration signal detection

A  = log(skewness_Data);
B = median(OverlapWindow(real(A),windowSize*3),2);
Trend_Turb_Vibr_detector = mode(OverlapWindow(real(B),windowSize*1),2);

%Kurtosis
kurtosis_Data = kurtosis(DataWindow');

%Ratio of Kurtosis of two consecutive windows

kurtosis_DataRatio = kurtosis_Data(2:end)./kurtosis_Data(1:end-1);

%Rate of Kurtosis of two consecutive windows

kurtosis_DataRate = diff(kurtosis_Data);

% trending turbulant vibration signal detection

kurtosisSum = sum(OverlapWindow(kurtosis_Data,windowSize),2);
kurtosisSumMedian = mode(OverlapWindow(kurtosisSum,windowSize*3),2);

%% Concatinating all features

Features = [mean_Data((windowSize*4)-2:end-1)...%1
    mean_DataRatio((windowSize*4)-2:end)...%2
    mean_DataRate((windowSize*4)-2:end)...%3
    Spike_Detection((windowSize*2)+1:end)...%4
    std_Data((windowSize*4)-2:end-1)...%5
    std_DataRatio((windowSize*4)-2:end)...%6
    std_DataRate((windowSize*4)-2:end)...%7
    Turbulant_Vibration_Detection((windowSize*2)-1:end)...%8
    var_Data((windowSize*4)-2:end-1)...%9
    var_DataRatio((windowSize*4)-2:end)...%10
    var_DataRate((windowSize*4)-2:end)...%11
    power_Data((windowSize*4)-2:end-1)...%12
    power_DataRatio((windowSize*4)-2:end)...%13
    power_DataRate((windowSize*4)-2:end)...%14
    Periodic_detector((windowSize*3):end)...%15
    median_Data((windowSize*4)-2:end-1)...%16
    median_DataRatio((windowSize*4)-2:end)...%17
    median_DataRate((windowSize*4)-2:end)...%18
    skewness_Data((windowSize*4)-2:end-1)'...%19
    skewness_DataRatio((windowSize*4)-2:end)'...%20
    skewness_DataRate((windowSize*4)-2:end)'...%21
    Trend_Turb_Vibr_detector...%22
    kurtosis_Data((windowSize*4)-2:end-1)'...%23
    kurtosis_DataRatio((windowSize*4)-2:end)'...%24
    kurtosis_DataRate((windowSize*4)-2:end)'...%25
    kurtosisSumMedian];%26

