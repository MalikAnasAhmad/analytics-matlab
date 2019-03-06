%%
%Analysis of Skewness feature 
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

figure(1)

subplot(8,1,1)
plot(Data(1:end-windowSize),'b')
xlim([1 numel(Data(1:end-windowSize))])
title('Original')

subplot(8,1,2)
plot(skewness(DataWindow'),'r')
xlim([1 numel(skewness(DataWindow'))])
title('Skewness')

subplot(8,1,3)
% A = log(OverlapWindow(skewness(DataWindow'),windowSize));
A  = log(skewness(DataWindow'));
plot(real(A),'m')
xlim([1 numel(skewness(DataWindow'))])
title('Log of Skewness')

subplot(8,1,4)
B = median(OverlapWindow(real(A),windowSize*3),2);
plot(B)
title('Median of Log of Skewness')

subplot(8,1,5)
plot(median(OverlapWindow(real(A),windowSize*1),2)>0)
title('Thresholded Median of Log of Skewness')

subplot(8,1,6)
plot(mode(OverlapWindow(real(A),windowSize*1),2))
title('Mode of Log of Skewness')

subplot(8,1,7)
plot(mode(OverlapWindow(real(A),windowSize*1),2)>0)
title('Thresholded Mode of Log of Skewness')

subplot(8,1,8)
plot(mode(OverlapWindow(real(B),windowSize*1),2)>0)
title('Mode of Median of Log of Skewness')

figure(2)

subplot(6,1,1)
plot(Data(1:end-windowSize),'b')
xlim([1 numel(Data(1:end-windowSize))])
title('Original')

subplot(6,1,2)
plot(skewness(DataWindow'),'r')
xlim([1 numel(skewness(DataWindow'))])
title('Skewness')

subplot(6,1,3)
A  = log(skewness(DataWindow'));
plot(real(A),'m')
xlim([1 numel(skewness(DataWindow'))])
title('Log of Skewness')

subplot(6,1,4)
B = median(OverlapWindow(real(A),windowSize*3),2);
plot(B)
title('Median of Log of Skewness')

subplot(6,1,5)
plot(mode(OverlapWindow(real(B),windowSize*1),2))
title('Mode of Median of Log of Skewness')

subplot(6,1,6)
plot(mode(OverlapWindow(real(B),windowSize*1),2)>0)
title('Mode of Median of Log of Skewness')