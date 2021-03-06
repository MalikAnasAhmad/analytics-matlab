load('I:\My Drive\Product\Data analysis\Analogue devices\shiratech\20190321\with_and_without_1_condensator.mat');
%% determining the window size
time_period_acc = 1/1000;
time_period_mag = 1/333;
time_period_motor = 1/50;
window_size = 11.096*1;
no_of_sample_for_window_size_acc = ceil((time_period_motor/time_period_acc)*2);
no_of_sample_for_window_size_mag = ceil((time_period_motor/time_period_mag)*2);
no_of_sample_for_window_size_mic = ceil((1/time_period_motor)*2);

%% windowing the data
DataWindow_acc_x = OverlapWindow(accelerometer_x,no_of_sample_for_window_size_acc);
DataWindow_acc_y = OverlapWindow(accelerometer_y,no_of_sample_for_window_size_acc);
DataWindow_acc_z = OverlapWindow(accelerometer_z,no_of_sample_for_window_size_acc);
DataWindow_mag_x = OverlapWindow(magnetometer_x,no_of_sample_for_window_size_mag);
DataWindow_mag_y = OverlapWindow(magnetometer_y,no_of_sample_for_window_size_mag);
DataWindow_mag_z = OverlapWindow(magnetometer_z,no_of_sample_for_window_size_mag);
DataWindow_mic = OverlapWindow(microphone,no_of_sample_for_window_size_mic);

DataWindow_acc_x1 = OverlapWindow(accelerometer_x1,no_of_sample_for_window_size_acc);
DataWindow_acc_y1 = OverlapWindow(accelerometer_y1,no_of_sample_for_window_size_acc);
DataWindow_acc_z1 = OverlapWindow(accelerometer_z1,no_of_sample_for_window_size_acc);
DataWindow_mag_x1 = OverlapWindow(magnetometer_x1,no_of_sample_for_window_size_mag);
DataWindow_mag_y1 = OverlapWindow(magnetometer_y1,no_of_sample_for_window_size_mag);
DataWindow_mag_z1 = OverlapWindow(magnetometer_z1,no_of_sample_for_window_size_mag);
DataWindow_mic1 = OverlapWindow(microphone1,no_of_sample_for_window_size_mic);

%% removing dc off set by deducting the mean
DataWindow_acc_x = DataWindow_acc_x - repmat(mean(DataWindow_acc_x,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_y = DataWindow_acc_y - repmat(mean(DataWindow_acc_y,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_z = DataWindow_acc_z - repmat(mean(DataWindow_acc_z,2),1,no_of_sample_for_window_size_acc);
DataWindow_mag_x = DataWindow_mag_x - repmat(mean(DataWindow_mag_x,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_y = DataWindow_mag_y - repmat(mean(DataWindow_mag_y,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_z = DataWindow_mag_z - repmat(mean(DataWindow_mag_z,2),1,no_of_sample_for_window_size_mag);
DataWindow_mic = DataWindow_mic - repmat(mean(DataWindow_mic,2),1,no_of_sample_for_window_size_mic);

DataWindow_acc_x1 = DataWindow_acc_x1 - repmat(mean(DataWindow_acc_x1,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_y1 = DataWindow_acc_y1 - repmat(mean(DataWindow_acc_y1,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_z1 = DataWindow_acc_z1 - repmat(mean(DataWindow_acc_z1,2),1,no_of_sample_for_window_size_acc);
DataWindow_mag_x1 = DataWindow_mag_x1 - repmat(mean(DataWindow_mag_x1,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_y1 = DataWindow_mag_y1 - repmat(mean(DataWindow_mag_y1,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_z1 = DataWindow_mag_z1 - repmat(mean(DataWindow_mag_z1,2),1,no_of_sample_for_window_size_mag);
DataWindow_mic1 = DataWindow_mic1 - repmat(mean(DataWindow_mic1,2),1,no_of_sample_for_window_size_mic);

%% fft windows
fft_acc_x_window = zeros(size(DataWindow_acc_x));
fft_acc_y_window = zeros(size(DataWindow_acc_y));
fft_acc_z_window = zeros(size(DataWindow_acc_z));
fft_mag_x_window = zeros(size(DataWindow_mag_x));
fft_mag_y_window = zeros(size(DataWindow_mag_y));
fft_mag_z_window = zeros(size(DataWindow_mag_z));
fft_mic_window = zeros(size(DataWindow_mic));

fft_acc_x1_window = zeros(size(DataWindow_acc_x1));
fft_acc_y1_window = zeros(size(DataWindow_acc_y1));
fft_acc_z1_window = zeros(size(DataWindow_acc_z1));
fft_mag_x1_window = zeros(size(DataWindow_mag_x1));
fft_mag_y1_window = zeros(size(DataWindow_mag_y1));
fft_mag_z1_window = zeros(size(DataWindow_mag_z1));
fft_mic1_window = zeros(size(DataWindow_mic1));

fft_acc_x_window_fftshifted = zeros(size(DataWindow_acc_x,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_y_window_fftshifted = zeros(size(DataWindow_acc_y,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_z_window_fftshifted = zeros(size(DataWindow_acc_z,1),ceil(no_of_sample_for_window_size_acc/2));
fft_mag_x_window_fftshifted = zeros(size(DataWindow_mag_x,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_y_window_fftshifted = zeros(size(DataWindow_mag_x,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_z_window_fftshifted = zeros(size(DataWindow_mag_x,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mic_window_fftshifted = zeros(size(DataWindow_mic,1),ceil(no_of_sample_for_window_size_mic/2));

fft_acc_x1_window_fftshifted = zeros(size(DataWindow_acc_x1,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_y1_window_fftshifted = zeros(size(DataWindow_acc_y1,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_z1_window_fftshifted = zeros(size(DataWindow_acc_z1,1),ceil(no_of_sample_for_window_size_acc/2));
fft_mag_x1_window_fftshifted = zeros(size(DataWindow_mag_x1,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_y1_window_fftshifted = zeros(size(DataWindow_mag_x1,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_z1_window_fftshifted = zeros(size(DataWindow_mag_x1,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mic1_window_fftshifted = zeros(size(DataWindow_mic1,1),ceil(no_of_sample_for_window_size_mic/2));

%% taking fft and fftshift
for window_index = 1 : size(DataWindow_acc_x,1)
fft_acc_x_window(window_index,:) = fft(DataWindow_acc_x(window_index,:));
fft_acc_y_window(window_index,:) = fft(DataWindow_acc_y(window_index,:));
fft_acc_z_window(window_index,:) = fft(DataWindow_acc_z(window_index,:));

temp = fftshift(abs(fft_acc_x_window(window_index,:)));
fft_acc_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_y_window(window_index,:)));
fft_acc_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_z_window(window_index,:)));
fft_acc_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
end

for window_index = 1 : size(DataWindow_mag_x,1)
fft_mag_x_window(window_index,:) = fft(DataWindow_mag_x(window_index,:));
fft_mag_y_window(window_index,:) = fft(DataWindow_mag_y(window_index,:));
fft_mag_z_window(window_index,:) = fft(DataWindow_mag_z(window_index,:));

temp = fftshift(abs(fft_mag_x_window(window_index,:)));
fft_mag_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_y_window(window_index,:)));
fft_mag_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_z_window(window_index,:)));
fft_mag_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
end

for window_index = 1 : size(DataWindow_mic,1)
fft_mic_window(window_index,:) = fft(DataWindow_mic(window_index,:));

temp = fftshift(abs(fft_mic_window(window_index,:)));
fft_mic_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mic/2));
end

for window_index = 1 : size(DataWindow_acc_x1,1)
fft_acc_x1_window(window_index,:) = fft(DataWindow_acc_x1(window_index,:));
fft_acc_y1_window(window_index,:) = fft(DataWindow_acc_y1(window_index,:));
fft_acc_z1_window(window_index,:) = fft(DataWindow_acc_z1(window_index,:));

temp = fftshift(abs(fft_acc_x1_window(window_index,:)));
fft_acc_x1_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_y1_window(window_index,:)));
fft_acc_y1_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_z1_window(window_index,:)));
fft_acc_z1_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
end

for window_index = 1 : size(DataWindow_mag_x1,1)
fft_mag_x1_window(window_index,:) = fft(DataWindow_mag_x1(window_index,:));
fft_mag_y1_window(window_index,:) = fft(DataWindow_mag_y1(window_index,:));
fft_mag_z1_window(window_index,:) = fft(DataWindow_mag_z1(window_index,:));

temp = fftshift(abs(fft_mag_x1_window(window_index,:)));
fft_mag_x1_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_y1_window(window_index,:)));
fft_mag_y1_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_z1_window(window_index,:)));
fft_mag_z1_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
end

for window_index = 1 : size(DataWindow_mic1,1)
fft_mic1_window(window_index,:) = fft(DataWindow_mic1(window_index,:));

temp = fftshift(abs(fft_mic1_window(window_index,:)));
fft_mic1_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mic/2));
end


%% structuring the data for ML

%% with condesator acc and magenometer only with fftshifted
total_length = length(status);
ML_data_fft_acc_mag_fftshifted = [
    fft_acc_x_window_fftshifted(1:78,:) ...
    fft_acc_y_window_fftshifted(1:78,:) ...
    fft_acc_z_window_fftshifted(1:78,:) ...
    fft_mag_x_window_fftshifted(1:78,:) ...
    fft_mag_y_window_fftshifted(1:78,:) ...
    fft_mag_z_window_fftshifted(1:78,:) ...
    status(40:total_length)];

%% without condensator acc and magenometer only with fftshifted

total_length1 = length(status1);
ML_data_fft_1_acc_mag_fftshifted = [
    fft_acc_x1_window_fftshifted(1:126,:) ...
    fft_acc_y1_window_fftshifted(1:126,:) ...
    fft_acc_z1_window_fftshifted(1:126,:) ...
    fft_mag_x1_window_fftshifted(1:126,:) ...
    fft_mag_y1_window_fftshifted(1:126,:) ...
    fft_mag_z1_window_fftshifted(1:126,:) ...
    status1(40:total_length1)];

ML_data_fft_mean_deducted_condesator_acc_mag_fftshifted = abs([[ML_data_fft_acc_mag_fftshifted(:,1:6) ones(size(ML_data_fft_acc_mag_fftshifted,1),1)];[ML_data_fft_1_acc_mag_fftshifted(:,1:6) zeros(size(ML_data_fft_1_acc_mag_fftshifted,1),1)]]);
