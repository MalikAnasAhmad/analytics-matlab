% clear all
% plot(CL_DATA,'DisplayName','CL_DATA')
% plot(Data)
% plot(Data_Labels)
% plot(Data_Manipulation)
% plot(DataWindow,'DisplayName','DataWindow')
% plot(Epoch_Time)
% plot(meanFeature)
% plot(Data)
% clear all
% load('Bad_1.mat')
% plot(VibAuslaufBedienseiteTop)
% IdleTimeout has been reached.
% Parallel pool using the 'local' profile is shutting down.
% plot(VibAuslaufBedienseiteTop)
% Starting parallel pool (parpool) using the 'local' profile ... connected to 2 workers.
% plot(VibAuslaufBedienseiteTop)
% Data  = VibAuslaufBedienseiteTop(71180000:73570000);
% figure(2), plot(Data);
% Data  = VibAuslaufBedienseiteTop(72000000:73000000);
% figure(2), plot(Data);
% Data  = VibAuslaufBedienseiteTop(71180000:73570000);
% figure(2), plot(Data);
% Data  = VibAuslaufBedienseiteTop(71500000:73500000);
% figure(2), plot(Data);
% Data  = VibAuslaufBedienseiteTop(71000000:73300000);
% figure(2), plot(Data);
% Data  = VibAuslaufBedienseiteTop(71500000:73300000);
% figure(2), plot(Data);
% Data  = VibAuslaufBedienseiteTop(71250000:73300000);
% figure(2), plot(Data);
% DataWindow = NonOverlapWindow(Data,1000);
% Features = StatiticalFeatures_201703121336(DataWindow);
% plot(Features(:,1))
% Data_Time_1= Data_Time(205001-165200+100:100:205001);

figure(1),
subplot(5,1,1)
plot(Data_Time_1,Features(:,1))
title('mean')
subplot(5,1,2)
plot(Data_Time_1,Features(:,2))
title('mean ratio')
subplot(5,1,3)
plot(Data_Time_1,Features(:,3))
title('mean rate')
subplot(5,1,4)
plot(Data_Time_1,Features(:,4))
title('spike detetction')
subplot(5,1,5)
plot(Data_Time_original,Data)
title('Data')

figure(2),
subplot(5,1,1)
plot(Data_Time_1,Features(:,5))
title('std')
subplot(5,1,2)
plot(Data_Time_1,Features(:,6))
title('std ratio')
subplot(5,1,3)
plot(Data_Time_1,Features(:,7))
title('std rate')
subplot(5,1,4)
plot(Data_Time_1,Features(:,8))
title('Turbulant_Vibration_Detection')
subplot(5,1,5)
plot(Data_Time_original,Data)
title('Data')

figure(3),
subplot(5,1,1)
plot(Data_Time_1,Features(:,9))
title('var')
subplot(5,1,2)
plot(Data_Time_1,Features(:,10))
title('var ratio')
subplot(5,1,3)
plot(Data_Time_1,Features(:,11))
title('var rate')
subplot(5,1,4)
plot(Data_Time_1,Features(:,12))
title('power')
subplot(5,1,5)
plot(Data_Time_original,Data)
title('Data')

figure(4),
subplot(5,1,1)
plot(Data_Time_1,Features(:,13))
title('power ratio')
subplot(5,1,2)
plot(Data_Time_1,Features(:,14))
title('power rate')
subplot(5,1,3)
plot(Data_Time_1,Features(:,15))
title('periiodic detector')
subplot(5,1,4)
plot(Data_Time_1,Features(:,16))
title('median')
subplot(5,1,5)
plot(Data_Time_original,Data)
title('Data')

figure(5),
subplot(5,1,1)
plot(Data_Time_1,Features(:,17))
title('median ratio')
subplot(5,1,2)
plot(Data_Time_1,Features(:,18))
title('median rate')
subplot(5,1,3)
plot(Data_Time_1,Features(:,19))
title('skewness')
subplot(5,1,4)
plot(Data_Time_1,Features(:,20))
title('skewness ratio')
subplot(5,1,5)
plot(Data_Time_original,Data)
title('Data')

figure(6),
subplot(5,1,1)
plot(Data_Time_1,Features(:,21))
title('skewness_DataRate')
subplot(5,1,2)
plot(Data_Time_1,Features(:,22))
title('Trend_Turb_Vibr_detector')
subplot(5,1,3)
plot(Data_Time_1,Features(:,23))
title('kurtosis')
subplot(5,1,4)
plot(Data_Time_1,Features(:,24))
title('Kurtosis ratio')
subplot(5,1,5)
plot(Data_Time_original,Data)
title('Data')

figure(7),
subplot(5,1,1)
plot(Data_Time_1,Features(:,25))
title('kurtosis rate')
subplot(5,1,2)
plot(Data_Time_1,Features(:,26))
title('kurtosisSumMedian')
% subplot(5,1,3)
% plot(Data_Time_1,Features(:,15))
% title('median rate')
% subplot(5,1,4)
% plot(Data_Time_1,Features(:,8))
% title('var ratio')
subplot(5,1,5)
plot(Data_Time_original,Data)
title('Data')