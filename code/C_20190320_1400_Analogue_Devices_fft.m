%% reading the data
C_20190320_1300_Analogue_Devices_file_parsing
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

% fft_x_window = fft_x_window.*(abs(fft_x_window)<800);

figure(5),
subplot(5,1,1)
plot(abs(fft_x_window(1,:)))
ylim([7.6*10^5 7.65*10^5])
subplot(5,1,2)
plot(abs(fft_x_window(2,:)))
% ylim([-2000 2000])
subplot(5,1,3)
plot(abs(fft_x_window(3,:)))
% ylim([0 2000])
subplot(5,1,4)
plot(abs(fft_x_window(175,:)))
% ylim([-2000 2000])
subplot(5,1,5)
plot(abs(fft_x_window(185,:)))

figure(6)
fft_x_window_1 = fft_x_window';
fft_x_window_1 = fft_x_window_1(:);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_x_len+1-no_of_sample_for_window_size,abs(fft_x_window_1),'b')
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_x_len+1-no_of_sample_for_window_size,real(fft_x_window_1),'b')
% ylim([0 2000])
hold on
plot(status(no_of_sample_for_window_size:fft_x_len)*250,'r')
hold off
