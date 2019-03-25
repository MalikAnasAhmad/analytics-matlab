% with mean change
%% reading the data
C_20190320_1300_Analogue_Devices_file_parsing
%%
accelarometer_x = accelarometer_x/mean(accelarometer_x);
accelarometer_y = accelarometer_y/mean(accelarometer_y);
accelarometer_z = accelarometer_z/mean(accelarometer_z);
%% taking the fft of the raw data
fft_x = fft(accelarometer_x);
fft_y = fft(accelarometer_y);
fft_z = fft(accelarometer_z);
%% initial plots of the overall fft
figure(4)
subplot(3,1,1)
plot(abs(fft_x)),ylim([0 10000])%, hold on, plot(status*3000, 'r'), hold off
subplot(3,1,2)
plot(abs(fft_y)),ylim([0 1500])%, hold on, plot(status*300, 'r'), hold off
subplot(3,1,3)
plot(abs(fft_z)),ylim([0 75000])%, hold on, plot(status*6000, 'r'), hold off
%% overlap windowing the data
time_period = 2.578;
window_size = 10.312*1;
no_of_sample_for_window_size = ceil(window_size/time_period);
DataWindow_x = OverlapWindow(accelarometer_x,no_of_sample_for_window_size);
fft_x_len = length(fft_x);
% fft_x_window = fftshift(DataWindow_x);
fft_x_window = zeros(size(DataWindow_x));
for window_index = 1 : size(DataWindow_x,1)
fft_x_window(window_index,:) = fft(DataWindow_x(window_index,:));
end
fft_x_window_without_threshold = fft_x_window;
fft_x_window = fft_x_window.*(abs(fft_x_window)<2);

sampling_frequency = 1/time_period;%Fs
sampling_period = time_period;%T
Length_of_signal = fft_x_len;%L
t = (0:Length_of_signal-1)*sampling_period;% Time vector
% f = sampling_frequency*(0:(Length_of_signal/2))/Length_of_signal;
f = sampling_frequency*(0:(Length_of_signal))/Length_of_signal;
f = f(1:end-no_of_sample_for_window_size);

figure(5)
fft_x_window_1 = fft_x_window';
fft_x_window_1 = fft_x_window_1(:);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_x_len+1-no_of_sample_for_window_size,abs(fft_x_window_1),'b')
% plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_x_len+1-no_of_sample_for_window_size,real(fft_x_window_1),'b')
% ylim([0 2000])
hold on
plot(status(no_of_sample_for_window_size:fft_x_len)*0.05,'r')
hold off
ylabel('frequency amplitude')
xlabel('recording index')
title('frequency amplitude (in blue) and status (in red) for accelarometer for x axis')
legend({'amplitude of frequency transform','status'},'Location','northeast')

%% overlap windowing the data
DataWindow_y = OverlapWindow(accelarometer_y,no_of_sample_for_window_size);
fft_y_len = length(fft_y);
% fft_y_window = fftshift(DataWindow_y);
fft_y_window = zeros(size(DataWindow_y));
for window_index = 1 : size(DataWindow_x,1)
fft_y_window(window_index,:) = fft(DataWindow_y(window_index,:));
end
fft_y_window_without_threshold = fft_y_window;
fft_y_window = fft_y_window.*(abs(fft_y_window)<2);

figure(6)
fft_y_window_1 = fft_y_window';
fft_y_window_1 = fft_y_window_1(:);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_y_len+1-no_of_sample_for_window_size,abs(fft_y_window_1),'b')
% ylim([0 2000])
hold on
plot(status(no_of_sample_for_window_size:fft_y_len)*0.05,'r')
hold off
ylabel('frequency amplitude')
xlabel('recording index')
title('frequency amplitude (in blue) and status (in red) for accelarometer for y axis')
legend({'amplitude of frequency transform','status'},'Location','northeast')

%% overlap windowing the data
DataWindow_z = OverlapWindow(accelarometer_z,no_of_sample_for_window_size);
fft_z_len = length(fft_z);
% fft_z_window = fftshift(DataWindow_z);
fft_z_window = zeros(size(DataWindow_z));
for window_index = 1 : size(DataWindow_x,1)
fft_z_window(window_index,:) = fft(DataWindow_z(window_index,:));
end
fft_z_window_without_threshold = fft_z_window;
fft_z_window = fft_z_window.*(abs(fft_z_window)<2);

figure(7)
fft_z_window_1 = fft_z_window';
fft_z_window_1 = fft_z_window_1(:);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_z_len+1-no_of_sample_for_window_size,abs(fft_z_window_1),'b')
% ylim([0 2000])
hold on
plot(status(no_of_sample_for_window_size:fft_z_len)*0.5,'r')
hold off
ylabel('frequency amplitude')
xlabel('recording index')
title('frequency amplitude (in blue) and status (in red) for accelarometer for z axis')
legend({'amplitude of frequency transform','status'},'Location','northeast')

ML_data_without_threshold_complex = [fft_x_window_without_threshold fft_y_window_without_threshold fft_z_window_without_threshold status(no_of_sample_for_window_size:fft_z_len)];
ML_data_without_threshold = [abs(fft_x_window_without_threshold) abs(fft_y_window_without_threshold) abs(fft_z_window_without_threshold) status(no_of_sample_for_window_size:fft_z_len)];
% ML_data_complex = [fft_x_window_without_threshold fft_y_window_without_threshold fft_z_window_without_threshold status(no_of_sample_for_window_size:fft_z_len)];
ML_data = [abs(fft_x_window) abs(fft_y_window) abs(fft_z_window) status(no_of_sample_for_window_size:fft_z_len)];
% ML_data = [[amplitude_good;amplitude_damaged] [zeros(49,1);ones(49,1)]];
% ML_data_without_flags = [amplitude_good;amplitude_damaged];
% ML_data_flags = [zeros(49,1);ones(49,1)];
% ML_data_4_NN_train = [amplitude_good(1:20,:);amplitude_damaged(1:20,:)];
% ML_data_4_NN_train_flags = [zeros(20,1);ones(20,1)];
% ML_data_4_NN_test = [amplitude_good(21:49,:);amplitude_damaged(21:49,:)];
% ML_data_4_NN_test_flags = [zeros(49-20,1);ones(49-20,1)];