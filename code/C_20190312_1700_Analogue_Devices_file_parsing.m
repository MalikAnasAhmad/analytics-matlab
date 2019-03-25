%% Read the file data 
data = csvread('I:\My Drive\Product\Data analysis\Analogue devices\first test setup outputs\20190312\Data file example\GoodAndDamagedBearing.csv',1,1) ;
frequency_damaged = data(1,1:128);
frequency_good = data(1,129:256);
amplitude_damaged = data(2:50,1:128);
amplitude_good = data(2:50,129:256);

ML_data = [[amplitude_good;amplitude_damaged] [zeros(49,1);ones(49,1)]];
ML_data_without_flags = [amplitude_good;amplitude_damaged];
ML_data_flags = [zeros(49,1);ones(49,1)];
ML_data_4_NN_train = [amplitude_good(1:20,:);amplitude_damaged(1:20,:)];
ML_data_4_NN_train_flags = [zeros(20,1);ones(20,1)];
ML_data_4_NN_test = [amplitude_good(21:49,:);amplitude_damaged(21:49,:)];
ML_data_4_NN_test_flags = [zeros(49-20,1);ones(49-20,1)];