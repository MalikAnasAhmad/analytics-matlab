C_20190401_data_read_Comox_data
%% determining the window size
time_period_acc = 1/1000;
time_period_mag = 1/333;
time_period_motor = 1/50;
window_size = 11.096*1;
no_of_sample_for_window_size_acc = ceil((time_period_motor/time_period_acc)*2);
no_of_sample_for_window_size_mag = ceil((time_period_motor/time_period_mag)*2);
no_of_sample_for_window_size_mic = ceil((1/time_period_motor)*2);

%% windowing the data
DataWindow_acc_cap_on_x = OverlapWindow(acc_cap_on_x,no_of_sample_for_window_size_acc);
DataWindow_acc_cap_on_y = OverlapWindow(acc_cap_on_y,no_of_sample_for_window_size_acc);
DataWindow_acc_cap_on_z = OverlapWindow(acc_cap_on_z,no_of_sample_for_window_size_acc);
DataWindow_mag_cap_on_x = OverlapWindow(mag_cap_on_x,no_of_sample_for_window_size_mag);
DataWindow_mag_cap_on_y = OverlapWindow(mag_cap_on_y,no_of_sample_for_window_size_mag);
DataWindow_mag_cap_on_z = OverlapWindow(mag_cap_on_z,no_of_sample_for_window_size_mag);

DataWindow_acc_cap_off_x = OverlapWindow(acc_cap_off_x,no_of_sample_for_window_size_acc);
DataWindow_acc_cap_off_y = OverlapWindow(acc_cap_off_y,no_of_sample_for_window_size_acc);
DataWindow_acc_cap_off_z = OverlapWindow(acc_cap_off_z,no_of_sample_for_window_size_acc);
DataWindow_mag_cap_off_x = OverlapWindow(mag_cap_off_x,no_of_sample_for_window_size_mag);
DataWindow_mag_cap_off_y = OverlapWindow(mag_cap_off_y,no_of_sample_for_window_size_mag);
DataWindow_mag_cap_off_z = OverlapWindow(mag_cap_off_z,no_of_sample_for_window_size_mag);

DataWindow_acc_power_off_x = OverlapWindow(acc_power_off_x,no_of_sample_for_window_size_acc);
DataWindow_acc_power_off_y = OverlapWindow(acc_power_off_y,no_of_sample_for_window_size_acc);
DataWindow_acc_power_off_z = OverlapWindow(acc_power_off_z,no_of_sample_for_window_size_acc);
DataWindow_mag_power_off_x = OverlapWindow(mag_power_off_x,no_of_sample_for_window_size_mag);
DataWindow_mag_power_off_y = OverlapWindow(mag_power_off_y,no_of_sample_for_window_size_mag);
DataWindow_mag_power_off_z = OverlapWindow(mag_power_off_z,no_of_sample_for_window_size_mag);
%% removing dc off set by deducting the mean
DataWindow_acc_cap_on_x = DataWindow_acc_cap_on_x - repmat(mean(DataWindow_acc_cap_on_x,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_cap_on_y = DataWindow_acc_cap_on_y - repmat(mean(DataWindow_acc_cap_on_y,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_cap_on_z = DataWindow_acc_cap_on_z - repmat(mean(DataWindow_acc_cap_on_z,2),1,no_of_sample_for_window_size_acc);
DataWindow_mag_cap_on_x = DataWindow_mag_cap_on_x - repmat(mean(DataWindow_mag_cap_on_x,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_cap_on_y = DataWindow_mag_cap_on_y - repmat(mean(DataWindow_mag_cap_on_y,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_cap_on_z = DataWindow_mag_cap_on_z - repmat(mean(DataWindow_mag_cap_on_z,2),1,no_of_sample_for_window_size_mag);

DataWindow_acc_cap_off_x = DataWindow_acc_cap_off_x - repmat(mean(DataWindow_acc_cap_off_x,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_cap_off_y = DataWindow_acc_cap_off_y - repmat(mean(DataWindow_acc_cap_off_y,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_cap_off_z = DataWindow_acc_cap_off_z - repmat(mean(DataWindow_acc_cap_off_z,2),1,no_of_sample_for_window_size_acc);
DataWindow_mag_cap_off_x = DataWindow_mag_cap_off_x - repmat(mean(DataWindow_mag_cap_off_x,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_cap_off_y = DataWindow_mag_cap_off_y - repmat(mean(DataWindow_mag_cap_off_y,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_cap_off_z = DataWindow_mag_cap_off_z - repmat(mean(DataWindow_mag_cap_off_z,2),1,no_of_sample_for_window_size_mag);

DataWindow_acc_power_off_x = DataWindow_acc_power_off_x - repmat(mean(DataWindow_acc_power_off_x,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_power_off_y = DataWindow_acc_power_off_y - repmat(mean(DataWindow_acc_power_off_y,2),1,no_of_sample_for_window_size_acc);
DataWindow_acc_power_off_z = DataWindow_acc_power_off_z - repmat(mean(DataWindow_acc_power_off_z,2),1,no_of_sample_for_window_size_acc);
DataWindow_mag_power_off_x = DataWindow_mag_power_off_x - repmat(mean(DataWindow_mag_power_off_x,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_power_off_y = DataWindow_mag_power_off_y - repmat(mean(DataWindow_mag_power_off_y,2),1,no_of_sample_for_window_size_mag);
DataWindow_mag_power_off_z = DataWindow_mag_power_off_z - repmat(mean(DataWindow_mag_power_off_z,2),1,no_of_sample_for_window_size_mag);

%% fft windows
fft_acc_cap_on_x_window = zeros(size(DataWindow_acc_cap_on_x));
fft_acc_cap_on_y_window = zeros(size(DataWindow_acc_cap_on_y));
fft_acc_cap_on_z_window = zeros(size(DataWindow_acc_cap_on_z));
fft_mag_cap_on_x_window = zeros(size(DataWindow_mag_cap_on_x));
fft_mag_cap_on_y_window = zeros(size(DataWindow_mag_cap_on_y));
fft_mag_cap_on_z_window = zeros(size(DataWindow_mag_cap_on_z));

fft_acc_cap_off_x_window = zeros(size(DataWindow_acc_cap_off_x));
fft_acc_cap_off_y_window = zeros(size(DataWindow_acc_cap_off_y));
fft_acc_cap_off_z_window = zeros(size(DataWindow_acc_cap_off_z));
fft_mag_cap_off_x_window = zeros(size(DataWindow_mag_cap_off_x));
fft_mag_cap_off_y_window = zeros(size(DataWindow_mag_cap_off_y));
fft_mag_cap_off_z_window = zeros(size(DataWindow_mag_cap_off_z));

fft_acc_power_off_x_window = zeros(size(DataWindow_acc_power_off_x));
fft_acc_power_off_y_window = zeros(size(DataWindow_acc_power_off_y));
fft_acc_power_off_z_window = zeros(size(DataWindow_acc_power_off_z));
fft_mag_power_off_x_window = zeros(size(DataWindow_mag_power_off_x));
fft_mag_power_off_y_window = zeros(size(DataWindow_mag_power_off_y));
fft_mag_power_off_z_window = zeros(size(DataWindow_mag_power_off_z));

%% fft shifted windows
fft_acc_cap_on_x_window_fftshifted = zeros(size(DataWindow_acc_cap_on_x,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_cap_on_y_window_fftshifted = zeros(size(DataWindow_acc_cap_on_y,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_cap_on_z_window_fftshifted = zeros(size(DataWindow_acc_cap_on_z,1),ceil(no_of_sample_for_window_size_acc/2));
fft_mag_cap_on_x_window_fftshifted = zeros(size(DataWindow_mag_cap_on_x,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_cap_on_y_window_fftshifted = zeros(size(DataWindow_mag_cap_on_y,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_cap_on_z_window_fftshifted = zeros(size(DataWindow_mag_cap_on_z,1),ceil(no_of_sample_for_window_size_mag/2));

fft_acc_cap_off_x_window_fftshifted = zeros(size(DataWindow_acc_cap_off_x,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_cap_off_y_window_fftshifted = zeros(size(DataWindow_acc_cap_off_y,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_cap_off_z_window_fftshifted = zeros(size(DataWindow_acc_cap_off_z,1),ceil(no_of_sample_for_window_size_acc/2));
fft_mag_cap_off_x_window_fftshifted = zeros(size(DataWindow_mag_cap_off_x,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_cap_off_y_window_fftshifted = zeros(size(DataWindow_mag_cap_off_y,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_cap_off_z_window_fftshifted = zeros(size(DataWindow_mag_cap_off_z,1),ceil(no_of_sample_for_window_size_mag/2));

fft_acc_power_off_x_window_fftshifted = zeros(size(DataWindow_acc_power_off_x,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_power_off_y_window_fftshifted = zeros(size(DataWindow_acc_power_off_y,1),ceil(no_of_sample_for_window_size_acc/2));
fft_acc_power_off_z_window_fftshifted = zeros(size(DataWindow_acc_power_off_z,1),ceil(no_of_sample_for_window_size_acc/2));
fft_mag_power_off_x_window_fftshifted = zeros(size(DataWindow_mag_power_off_x,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_power_off_y_window_fftshifted = zeros(size(DataWindow_mag_power_off_y,1),ceil(no_of_sample_for_window_size_mag/2));
fft_mag_power_off_z_window_fftshifted = zeros(size(DataWindow_mag_power_off_z,1),ceil(no_of_sample_for_window_size_mag/2));

%% taking fft and fftshift
for window_index = 1 : size(DataWindow_acc_cap_on_x,1)
fft_acc_cap_on_x_window(window_index,:) = fft(DataWindow_acc_cap_on_x(window_index,:));
fft_acc_cap_on_y_window(window_index,:) = fft(DataWindow_acc_cap_on_y(window_index,:));
fft_acc_cap_on_z_window(window_index,:) = fft(DataWindow_acc_cap_on_z(window_index,:));

temp = fftshift(abs(fft_acc_cap_on_x_window(window_index,:)));
fft_acc_cap_on_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_cap_on_y_window(window_index,:)));
fft_acc_cap_on_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_cap_on_z_window(window_index,:)));
fft_acc_cap_on_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
end

for window_index = 1 : size(DataWindow_mag_cap_on_x,1)
fft_mag_cap_on_x_window(window_index,:) = fft(DataWindow_mag_cap_on_x(window_index,:));
fft_mag_cap_on_y_window(window_index,:) = fft(DataWindow_mag_cap_on_y(window_index,:));
fft_mag_cap_on_z_window(window_index,:) = fft(DataWindow_mag_cap_on_z(window_index,:));

temp = fftshift(abs(fft_mag_cap_on_x_window(window_index,:)));
fft_mag_cap_on_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_cap_on_y_window(window_index,:)));
fft_mag_cap_on_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_cap_on_z_window(window_index,:)));
fft_mag_cap_on_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
end

for window_index = 1 : size(DataWindow_acc_cap_off_x,1)
fft_acc_cap_off_x_window(window_index,:) = fft(DataWindow_acc_cap_off_x(window_index,:));
fft_acc_cap_off_y_window(window_index,:) = fft(DataWindow_acc_cap_off_y(window_index,:));
fft_acc_cap_off_z_window(window_index,:) = fft(DataWindow_acc_cap_off_z(window_index,:));

temp = fftshift(abs(fft_acc_cap_off_x_window(window_index,:)));
fft_acc_cap_off_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_cap_off_y_window(window_index,:)));
fft_acc_cap_off_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_cap_off_z_window(window_index,:)));
fft_acc_cap_off_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
end

for window_index = 1 : size(DataWindow_mag_cap_off_x,1)
fft_mag_cap_off_x_window(window_index,:) = fft(DataWindow_mag_cap_off_x(window_index,:));
fft_mag_cap_off_y_window(window_index,:) = fft(DataWindow_mag_cap_off_y(window_index,:));
fft_mag_cap_off_z_window(window_index,:) = fft(DataWindow_mag_cap_off_z(window_index,:));

temp = fftshift(abs(fft_mag_cap_off_x_window(window_index,:)));
fft_mag_cap_off_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_cap_off_y_window(window_index,:)));
fft_mag_cap_off_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_cap_off_z_window(window_index,:)));
fft_mag_cap_off_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
end

for window_index = 1 : size(DataWindow_acc_power_off_x,1)
fft_acc_power_off_x_window(window_index,:) = fft(DataWindow_acc_power_off_x(window_index,:));
fft_acc_power_off_y_window(window_index,:) = fft(DataWindow_acc_power_off_y(window_index,:));
fft_acc_power_off_z_window(window_index,:) = fft(DataWindow_acc_power_off_z(window_index,:));

temp = fftshift(abs(fft_acc_power_off_x_window(window_index,:)));
fft_acc_power_off_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_power_off_y_window(window_index,:)));
fft_acc_power_off_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
temp = fftshift(abs(fft_acc_power_off_z_window(window_index,:)));
fft_acc_power_off_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_acc/2));
end

for window_index = 1 : size(DataWindow_mag_power_off_x,1)
fft_mag_power_off_x_window(window_index,:) = fft(DataWindow_mag_power_off_x(window_index,:));
fft_mag_power_off_y_window(window_index,:) = fft(DataWindow_mag_power_off_y(window_index,:));
fft_mag_power_off_z_window(window_index,:) = fft(DataWindow_mag_power_off_z(window_index,:));

temp = fftshift(abs(fft_mag_power_off_x_window(window_index,:)));
fft_mag_power_off_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_power_off_y_window(window_index,:)));
fft_mag_power_off_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
temp = fftshift(abs(fft_mag_power_off_z_window(window_index,:)));
fft_mag_power_off_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size_mag/2));
end
%% structuring the data for ML

examples_to_be_considered = min([size(fft_acc_cap_on_x_window_fftshifted,1) size(fft_mag_cap_on_x_window_fftshifted,1)]);
ML_data_fft_acc_mag_cap_on_fftshifted = [
    fft_acc_cap_on_x_window(1:examples_to_be_considered,:) ...
    fft_acc_cap_on_x_window(1:examples_to_be_considered,:) ...
    fft_acc_cap_on_x_window(1:examples_to_be_considered,:) ...
    fft_mag_cap_on_x_window(1:examples_to_be_considered,:) ...
    fft_mag_cap_on_x_window(1:examples_to_be_considered,:) ...
    fft_mag_cap_on_x_window(1:examples_to_be_considered,:) ...
zeros(examples_to_be_considered,1)];

examples_to_be_considered = min([size(fft_acc_cap_off_x_window_fftshifted,1) size(fft_mag_cap_off_x_window_fftshifted,1)]);
ML_data_fft_acc_mag_cap_off_fftshifted = [
    fft_acc_cap_off_x_window(1:examples_to_be_considered,:) ...
    fft_acc_cap_off_x_window(1:examples_to_be_considered,:) ...
    fft_acc_cap_off_x_window(1:examples_to_be_considered,:) ...
    fft_mag_cap_off_x_window(1:examples_to_be_considered,:) ...
    fft_mag_cap_off_x_window(1:examples_to_be_considered,:) ...
    fft_mag_cap_off_x_window(1:examples_to_be_considered,:) ...
ones(examples_to_be_considered,1)];

examples_to_be_considered = min([size(fft_acc_power_off_x_window_fftshifted,1) size(fft_mag_power_off_x_window_fftshifted,1)]);
ML_data_fft_acc_mag_power_off_fftshifted = [
    fft_acc_power_off_x_window(1:examples_to_be_considered,:) ...
    fft_acc_power_off_x_window(1:examples_to_be_considered,:) ...
    fft_acc_power_off_x_window(1:examples_to_be_considered,:) ...
    fft_mag_power_off_x_window(1:examples_to_be_considered,:) ...
    fft_mag_power_off_x_window(1:examples_to_be_considered,:) ...
    fft_mag_power_off_x_window(1:examples_to_be_considered,:) ...
2.*ones(examples_to_be_considered,1)];

ML_data_fft_mean_deducted_condesator_acc_mag_fftshifted = abs([ML_data_fft_acc_mag_cap_on_fftshifted;...
    ML_data_fft_acc_mag_cap_off_fftshifted;...
    ML_data_fft_acc_mag_power_off_fftshifted]);