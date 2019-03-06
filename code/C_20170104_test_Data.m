Read_Pseudo_201612281400
Data_test = Pseudo_Value;

Data_test((100*20)+25) = Data_test((100*20)+25)*1.5;
Data_test((100*20)+26) = Data_test((100*20)+26)*1.6;
Data_test((100*20)+27) = Data_test((100*20)+27)*1.7;
Data_test((100*20)+28) = Data_test((100*20)+28)*1.5;

% plot(Data_test)
Data = Data_test;
clear Data_test