Read_Moisture_201612091400

Data = moisture;
clear moisture;
Labels = ones(size(Data));

%% Labels based on event change

Labels(1:10432) = 1;
Labels(10433:20812) = 2;
Labels(20813:44922) = 1;
Labels(44923:66834) = 1;
Labels(66835:90443) = 3;
Labels(90444:114913) = 1;
Labels(114914:140228) = 1;
Labels(140229:163266) = 1;
Labels(163267:185756) = 3;
Labels(185757:186639) = 4;
Labels(186640:212726) = 1;
Labels(212727:228245) = 1;
Labels(228246:end) = 1;

% figure(1)
% subplot(2,1,1)
% plot(Data,'b')
% subplot(2,1,2)
% plot(Labels,'r')