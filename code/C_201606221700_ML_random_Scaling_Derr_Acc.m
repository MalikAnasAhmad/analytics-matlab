close all
clear all
clc

pathName = 'F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\Betriebsschwingungsmessung Fedom_Flexibles Spannsystem';%set a path name of the folder from where we have to pick all of the .edf files es 
cd(pathName)%make it current directory
fileNames = ls ('*.mat');%list all of the .edf files

Bx = [];%Accelaration in x axis
By = [];%Accelaration in y axis
Bz = [];%Accelaration in z axis
Fz = [];%Axial Force of tool
M = [];%Torque
Bx_diff = []; % jerk on x axis
By_diff = [];% jerk on y axis
Bz_diff = [];% jerk on z axis
Fz_diff = [];% scalled jerk on tool
M_diff = [];% Rotatum (Angular Jerk)



for noOfFiles = 1 : size(fileNames,1)%Processing each file at a time
file_dir = [pathName '\' fileNames(noOfFiles,1:(find(fileNames(noOfFiles,:)=='.', 1, 'last' )+3))];%make a full path of the file
load(file_dir);%read that .mat file if it is smaller then a certain limit
Bx  = [Bx data.Bx];
By  = [By data.By];
Bz  = [Bz data.Bz];
Fz  = [Fz data.Fz];
M  = [M data.M];

clear data 

end

pathName = 'F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\\Messungen';%set a path name of the folder from where we have to pick all of the .edf files es 
cd(pathName)%make it current directory
fileNames = ls ('*.mat');%list all of the .edf files

for noOfFiles = 1 : size(fileNames,1)%Processing each file at a time
file_dir = [pathName '\' fileNames(noOfFiles,1:(find(fileNames(noOfFiles,:)=='.', 1, 'last' )+3))];%make a full path of the file
load(file_dir);%read that .mat file if it is smaller then a certain limit
Bx  = [Bx eval([fileNames(noOfFiles,1:end-4) '.Y(1,1).Data'])];
By  = [By eval([fileNames(noOfFiles,1:end-4) '.Y(1,2).Data'])];
Bz  = [Bz eval([fileNames(noOfFiles,1:end-4) '.Y(1,3).Data'])];
Fz  = [Fz eval([fileNames(noOfFiles,1:end-4) '.Y(1,4).Data'])];
M  = [M eval([fileNames(noOfFiles,1:end-4) '.Y(1,5).Data'])];

eval(['clear ' fileNames(noOfFiles,1:end-4)]) 

end

Bx_diff = [diff(Bx) zeros(1,1:length(Bx)-length(Bx_diff))]; % Finding jerk on x axis by taking derrivative along with zero padding to make the length same
By_diff = [diff(By) zeros(1,1:length(By)-length(By_diff))];% Finding jerk on y axis by taking derrivative along with zero padding to make the length same
Bz_diff = [diff(Bz) zeros(1,1:length(Bz)-length(Bz_diff))];% Finding jerk on z axis by taking derrivative along with zero padding to make the length same
Fz_diff = [diff(Fz) zeros(1,1:length(Fz)-length(Fz_diff))];% Finding scaled jerk of tool by taking derrivative along with zero padding to make the length same
M_diff =  [diff(M) zeros(1,1:length(M)-length(M_diff))];% Finding scaled Rotatum (Angular Jerk) of tool by taking derrivative along with zero padding to make the length same

labels  = ones(1,length(Bx));

clear Bx By Bz Fz M

Pseudo_Data = zeros(5,length(Bx_diff));
% r = a + (b-a).*rand(100,1)
Pseudo_Data(1,:) = (2*ceil(max(abs(Bx_diff))).*rand(1,length(Bx_diff)));
Pseudo_Data(2,:) = (2*ceil(max(abs(By_diff))).*rand(1,length(By_diff)));
Pseudo_Data(3,:) = (2*ceil(max(abs(Bz_diff))).*rand(1,length(Bz_diff)));
Pseudo_Data(4,:) = (2*ceil(max(abs(Fz_diff))).*rand(1,length(Fz_diff)));
Pseudo_Data(5,:) = (2*ceil(max(abs(M_diff))).*rand(1,length(M_diff)));

PD_Index = unique([find(abs(Pseudo_Data(1,:))>max(abs(Bx_diff))) find(abs(Pseudo_Data(2,:))>max(abs(By_diff))) find(abs(Pseudo_Data(3,:))>max(abs(Bz_diff))) find(abs(Pseudo_Data(4,:))>max(abs(Fz_diff))) find(abs(Pseudo_Data(5,:))>max(abs(M_diff)))]);

Pseudo_Data_Malignant = Pseudo_Data(:,PD_Index);

clear Pseudo_Data

NoTrE2S4BD = floor(length(Bx_diff)/2); %start traing examples with this number %umber of Trainaing Examples to start with for benign data
NoTrE2S4MD = floor(length(Pseudo_Data_Malignant(1,:))/2); %start traing examples with this number %umber of Trainaing Examples to start with for malignant data

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