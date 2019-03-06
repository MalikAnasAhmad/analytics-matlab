%%
%Analysis of Kurtosis feature 
% %
% Read_Pseudo_201612281400
% Data = Pseudo_Value;
C_20170104_test_Data_Kurtosis
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


% figure(1)
% % For non-overlapping
% % Feature_Plot = repmat(statiticalFeatures(:,13)',windowSize,1);
% % For overlapping
% Feature_Plot = statiticalFeatures(:,7);
% Feature_Plot_Ratio = statiticalFeatures(:,8);
% Feature_Plot_Rate = statiticalFeatures(:,9);
% plot(Data(1:end-windowSize),'b')
% hold on;
% plot(Feature_Plot(:),'r')
% plot(Feature_Plot_Ratio,'y')
% plot(Feature_Plot_Rate,'g')
% hold off;

figure(5)
subplot(6,1,1)
plot(Data(1:end-windowSize),'b')
xlim([1 numel(Data(1:end-windowSize))])
title('Original')
subplot(6,1,2)
plot(kurtosis(DataWindow'),'r')
xlim([1 numel(kurtosis(DataWindow'))])
title('Kurtosis')
subplot(6,1,3)
A = median(OverlapWindow(kurtosis(DataWindow'),windowSize),2);
plot(A,'g')
xlim([1 numel(A)])
title('Median of Kurtosis')
subplot(6,1,4)
% B = diff(A);
% plot(B,'y')
% xlim([1 numel(B)])
% title('Diff of Median of Kurtosis')
plot(skewness(DataWindow'),'r')
xlim([1 numel(skewness(DataWindow'))])
title('Skewness')
subplot(6,1,5)
E = median(OverlapWindow(skewness(DataWindow'),windowSize),2);
plot(E,'y')
xlim([1 numel(E)])
title('Median of Skewness')
subplot(6,1,6)
F = std(OverlapWindow((E.*(E<0)),windowSize),0,2);
plot(F,'m')
xlim([1 numel(F)])
title('Std of Median of Skewness')
% D = diff(C);
% plot(D,'y')
% xlim([1 numel(D)])
% title('CumSum of Median of Kurtosis')

figure(4)

subplot(5,1,1)
plot(Data(1:end-windowSize),'b')
xlim([1 numel(Data(1:end-windowSize))])
title('Original')

subplot(5,1,2)
Kurtosis = kurtosis(DataWindow')';
plot(Kurtosis,'r')
xlim([1 numel(Kurtosis)])
title('Kurtosis Feature')

subplot(5,1,3)
KurtosisSum = sum(OverlapWindow(Kurtosis,windowSize),2);
plot(KurtosisSum,'y')
xlim([1 numel(KurtosisSum)])
title('sum of Kurtosis Feature of each non overlpping window')

subplot(5,1,4)
% KurtosisSumMedian = median(OverlapWindow(KurtosisSum,windowSize*8),2);
KurtosisSumMedian = mode(OverlapWindow(KurtosisSum,windowSize*3),2);
plot(KurtosisSumMedian,'g')
Threshold=128;
hold on
plot(Threshold.*ones(1,numel(KurtosisSumMedian)),'r')
stem(330,200,'r')
stem(850,200,'r')
xlim([1 numel(KurtosisSumMedian)])
hold off
% xlim([1 7041])
% title('Median of the sum of Kurtosis Feature of each non overlpping window')
title('Mode of the sum of Kurtosis Feature of each non overlpping window')

subplot(5,1,5)
plot(KurtosisSumMedian.*(KurtosisSumMedian>Threshold),'c')
xlim([1 numel(KurtosisSumMedian)])
% xlim([1 7041])
title('Thresholded')