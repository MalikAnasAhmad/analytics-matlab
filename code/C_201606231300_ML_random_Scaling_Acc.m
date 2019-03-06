close all
clear all
clc

C_201606231200_ReadData_TUDarmstadt%reading data from .mat files

Bx_diff = []; % jerk on x axis
By_diff = [];% jerk on y axis
Bz_diff = [];% jerk on z axis
Fz_diff = [];% scalled jerk on tool
M_diff = [];% Rotatum (Angular Jerk)

Bx_diff = [diff(Bx) 0]; % Finding jerk on x axis by taking derrivative along with zero padding to make the length same
By_diff = [diff(By) 0];% Finding jerk on y axis by taking derrivative along with zero padding to make the length same
Bz_diff = [diff(Bz) 0];% Finding jerk on z axis by taking derrivative along with zero padding to make the length same
Fz_diff = [diff(Fz) 0];% Finding scaled jerk of tool by taking derrivative along with zero padding to make the length same
M_diff =  [diff(M) 0];% Finding scaled Rotatum (Angular Jerk) of tool by taking derrivative along with zero padding to make the length same

% labels  = ones(1,length(Bx));

Pseudo_Data = zeros(5,length(Bx));

Pseudo_Data(1,:) = 1.25*min(Bx) + (1.25*max(Bx)-(1.25*min(Bx))).*rand(1,length(Bx));
Pseudo_Data(2,:) = 1.25*min(By) + (1.25*max(By)-(1.25*min(By))).*rand(1,length(By));
Pseudo_Data(3,:) = 1.25*min(Bz) + (1.25*max(Bz)-(1.25*min(Bz))).*rand(1,length(Bz));
Pseudo_Data(4,:) = 1.25*min(Fz) + (1.25*max(Fz)-(1.25*min(Fz))).*rand(1,length(Fz));
Pseudo_Data(5,:) = 1.25*min(M) + (1.25*max(M)-(1.25*min(M))).*rand(1,length(M));

Pseudo_Data_diff = [diff(Pseudo_Data')' zeros(size(Pseudo_Data,1),1)];

% clear Bx By Bz Fz M

PD_Index = unique([find(abs(Pseudo_Data_diff(1,:))>max(abs(Bx_diff))) find(abs(Pseudo_Data_diff(2,:))>max(abs(By_diff))) find(abs(Pseudo_Data_diff(3,:))>max(abs(Bz_diff))) find(abs(Pseudo_Data_diff(4,:))>max(abs(Fz_diff))) find(abs(Pseudo_Data_diff(5,:))>max(abs(M_diff)))]);

Pseudo_Data_Malignant = Pseudo_Data_diff(:,PD_Index);

% clear Pseudo_Data

NoTrE2S4BD = floor(length(Bx_diff)/16); %start traing examples with this number %umber of Trainaing Examples to start with for benign data
NoTrE2S4MD = floor(length(Pseudo_Data_Malignant(1,:))/16); %start traing examples with this number %umber of Trainaing Examples to start with for malignant data

nb = NaiveBayes.fit([Bx_diff(:,NoTrE2S4BD:end)',By_diff(:,NoTrE2S4BD:end)',Bz_diff(:,NoTrE2S4BD:end)',Fz_diff(:,NoTrE2S4BD:end)',M_diff(:,NoTrE2S4BD:end)';Pseudo_Data_Malignant(:,NoTrE2S4MD:end)'], [labels(:,NoTrE2S4BD:end) zeros(1,length(Pseudo_Data_Malignant(1,NoTrE2S4MD:end)))]);

NoTeE2S4BD = 1; %end test examples with this number %umber of Trainaing Examples to start with for benign data
NoTeE2S4MD = 1; %end test examples with this number %umber of Trainaing Examples to start with for malignant data

classes = predict(nb,[Bx_diff(:,NoTeE2S4BD:NoTrE2S4BD)',By_diff(:,NoTeE2S4BD:NoTrE2S4BD)',Bz_diff(:,NoTeE2S4BD:NoTrE2S4BD)',Fz_diff(:,NoTeE2S4BD:NoTrE2S4BD)',M_diff(:,NoTeE2S4BD:NoTrE2S4BD)';Pseudo_Data_Malignant(:,NoTeE2S4MD:NoTrE2S4MD)']);

figure(1)
plot(classes,'b')
hold on
plot([ones(1,NoTrE2S4BD-NoTeE2S4BD+1) zeros(1,NoTrE2S4MD-NoTeE2S4MD+1)],'g')
plot((classes-[ones(1,NoTrE2S4BD-NoTeE2S4BD+1) zeros(1,NoTrE2S4MD-NoTeE2S4MD+1)]')*.5,'r')
hold off

[C,order] = confusionmat([ones(1,NoTrE2S4BD-NoTeE2S4BD+1) zeros(1,NoTrE2S4MD-NoTeE2S4MD+1)],classes)
% figure(2)
% plot(C)