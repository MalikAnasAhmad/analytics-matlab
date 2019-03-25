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
% Features = StatiticalFeatures(DataWindow);
% plot(Features(:,1))
% Data_Time_original  = TimeStamp(71250000:73300000);

figure(1),
subplot(5,1,1)
plot(Features(:,1))
title('mean')
subplot(5,1,2)
plot(Features(:,2))
title('mean ratio')
subplot(5,1,3)
plot(Features(:,3))
title('mean rate')
subplot(5,1,4)
plot(Features(:,4))
title('std')
subplot(5,1,5)
plot(Data)
title('Data')

figure(2),
subplot(5,1,1)
plot(Features(:,5))
title('std ratio')
subplot(5,1,2)
plot(Features(:,6))
title('std rate')
subplot(5,1,3)
plot(Features(:,7))
title('var')
subplot(5,1,4)
plot(Features(:,8))
title('var ratio')
subplot(5,1,5)
plot(Data)
title('Data')

figure(3),
subplot(5,1,1)
plot(Features(:,9))
title('var rate')
subplot(5,1,2)
plot(Features(:,10))
title('power')
subplot(5,1,3)
plot(Features(:,11))
title('power ratio')
subplot(5,1,4)
plot(Features(:,12))
title('power rate')
subplot(5,1,5)
plot(Data)
title('Data')

figure(4),
subplot(5,1,1)
plot(Features(:,13))
title('median')
subplot(5,1,2)
plot(Features(:,14))
title('median ratio')
subplot(5,1,3)
plot(Features(:,15))
title('median rate')
% subplot(5,1,4)
% plot(Features(:,8))
% title('var ratio')
subplot(5,1,5)
plot(Data)
title('Data')