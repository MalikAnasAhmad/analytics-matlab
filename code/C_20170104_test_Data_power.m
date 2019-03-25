Read_Pseudo_201612281400
Data_test = Pseudo_Value;
Data_Labels = Pseudo_Labels;

%% Spike
Data_test((100*20)+25) = Data_test((100*20)+25)*1.5;
Data_test((100*20)+26) = Data_test((100*20)+26)*1.6;
Data_test((100*20)+27) = Data_test((100*20)+27)*1.7;
Data_test((100*20)+28) = Data_test((100*20)+28)*1.5;

Data_Labels((100*20)+25 : (100*20)+28) = -1;

%% Random up Scaled Oscillation
Data_test(1050:1250) = Data_test(1050:1250).*rand(size(Data_test(1050:1250))).*1.25;
Data_test(1543:1876) = Data_test(1543:1876).*rand(size(Data_test(1543:1876))).*1.25;

Data_Labels([1050:1250 1543:1876]) = -2;

%% Random up Scaled periodic Oscillation
n=0:6:3600;

Data_test(2945:2945+numel(n)-1) = Data_test(2945:2945+numel(n)-1) + (75 .* sind(n)).';
Data_test(4945:4945+numel(n)-1) = Data_test(4945:4945+numel(n)-1) + (75 .* sind(n)).';

Data_Labels([2945:2945+numel(n)-1 4945:4945+numel(n)-1]) = -3;

% figure(1)
% plot(Data_test)
Data = Data_test;
clear Data_test

figure(1),
subplot(2,1,1),
plot(Data,'b'),
subplot(2,1,2),
plot(Data_Labels,'r')