%% Testing the Statistical Features on Pseudo data
C_20170104_test_Data_Kurtosis

% %% Down Sampling
% Data = downsample(Data,100);
% Labels = downsample(Labels,100);
% Epoch_Time = downsample(Epoch_Time,100);
%% Define window size
windowSize = 20;
%% making overlapping windows
DataWindow = OverlapWindow(Data,windowSize);%%

%% Statistical features
meanFeature = mean(DataWindow,2);
stdFeature = std(DataWindow,0,2);
pwrFeature = sum((DataWindow.*DataWindow),2)./size(DataWindow,2);
medFeature = median(DataWindow,2,'omitnan');
% medMeanFeature = medFeature(2:end) - diff(meanFeature);
medMeanFeature = median(OverlapWindow(medFeature - meanFeature,windowSize*2),2);
modFeature = mode(DataWindow,2);%not using it for noow

Features = [meanFeature(windowSize*2:end)...
    stdFeature(windowSize*2:end)...
    pwrFeature(windowSize*2:end)...
    medFeature(windowSize*2:end)...
    medMeanFeature];

Labels = Labels((windowSize*3)-(3-2):end);

figure(1)
subplot(7,1,1)
% plot(Data((windowSize*3)-(3-2):end),'b')
plot(Data)
title('Data')
subplot(7,1,2)
plot(Labels,'r')
title('Labels')
subplot(7,1,3)
plot(Features(:,1))
title('Mean')
subplot(7,1,4)
plot(Features(:,2))
title('Standard Deviation')
subplot(7,1,5)
plot(Features(:,3))
title('Power')
subplot(7,1,6)
plot(Features(:,4))
title('Median')
subplot(7,1,7)
plot(Features(:,5))
title('MeanMedian')