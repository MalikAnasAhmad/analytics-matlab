load('I:\My Drive\Product\Data analysis\Analogue devices\second data set\20190321\with_and_without_1_condensator.mat');
%% removing dc offset with_condesator data
accelerometer_x = accelerometer_x - mean(accelerometer_x);
accelerometer_y = accelerometer_y - mean(accelerometer_y);
accelerometer_z = accelerometer_z - mean(accelerometer_z);
magnetometer_x = magnetometer_x - mean(magnetometer_x);
magnetometer_y = magnetometer_y - mean(magnetometer_y);
magnetometer_z = magnetometer_z - mean(magnetometer_z);
microphone = microphone - mean(microphone);

%% removing dc offset without_condesator data
accelerometer_x1 = accelerometer_x1 - mean(accelerometer_x1);
accelerometer_y1 = accelerometer_y1 - mean(accelerometer_y1);
accelerometer_z1 = accelerometer_z1 - mean(accelerometer_z1);
magnetometer_x1 = magnetometer_x1 - mean(magnetometer_x1);
magnetometer_y1 = magnetometer_y1 - mean(magnetometer_y1);
magnetometer_z1 = magnetometer_z1 - mean(magnetometer_z1);
microphone1 = microphone1 - mean(microphone1);

%% overlap windowing the data for with_condesator data
time_period = 2.774;
window_size = 11.096*1;
no_of_sample_for_window_size = ceil(window_size/time_period);

DataWindow_acc_x = OverlapWindow(accelerometer_x,no_of_sample_for_window_size);
DataWindow_acc_y = OverlapWindow(accelerometer_y,no_of_sample_for_window_size);
DataWindow_acc_z = OverlapWindow(accelerometer_z,no_of_sample_for_window_size);
DataWindow_mag_x = OverlapWindow(magnetometer_x,no_of_sample_for_window_size);
DataWindow_mag_y = OverlapWindow(magnetometer_y,no_of_sample_for_window_size);
DataWindow_mag_z = OverlapWindow(magnetometer_z,no_of_sample_for_window_size);
DataWindow_mic = OverlapWindow(microphone,no_of_sample_for_window_size);

%% taking fft of the windows of with_condesator data
fft_acc_x_window = zeros(size(DataWindow_acc_x));
fft_acc_y_window = zeros(size(DataWindow_acc_y));
fft_acc_z_window = zeros(size(DataWindow_acc_z));
fft_mag_x_window = zeros(size(DataWindow_mag_x));
fft_mag_y_window = zeros(size(DataWindow_mag_y));
fft_mag_z_window = zeros(size(DataWindow_mag_z));
fft_mic_window = zeros(size(DataWindow_mic));

fft_acc_x_window_fftshifted = zeros(size(DataWindow_acc_x,1),ceil(size(DataWindow_acc_x,2)/2));
fft_acc_y_window_fftshifted = zeros(size(DataWindow_acc_y,1),ceil(size(DataWindow_acc_y,2)/2));
fft_acc_z_window_fftshifted = zeros(size(DataWindow_acc_z,1),ceil(size(DataWindow_acc_z,2)/2));
fft_mag_x_window_fftshifted = zeros(size(DataWindow_mag_x,1),ceil(size(DataWindow_mag_x,2)/2));
fft_mag_y_window_fftshifted = zeros(size(DataWindow_mag_x,1),ceil(size(DataWindow_mag_y,2)/2));
fft_mag_z_window_fftshifted = zeros(size(DataWindow_mag_x,1),ceil(size(DataWindow_mag_z,2)/2));
fft_mic_window_fftshifted = zeros(size(DataWindow_mic,1),ceil(size(DataWindow_mic,2)/2));
for window_index = 1 : size(DataWindow_acc_x,1)
fft_acc_x_window(window_index,:) = fft(DataWindow_acc_x(window_index,:));
fft_acc_y_window(window_index,:) = fft(DataWindow_acc_y(window_index,:));
fft_acc_z_window(window_index,:) = fft(DataWindow_acc_z(window_index,:));
fft_mag_x_window(window_index,:) = fft(DataWindow_mag_x(window_index,:));
fft_mag_y_window(window_index,:) = fft(DataWindow_mag_y(window_index,:));
fft_mag_z_window(window_index,:) = fft(DataWindow_mag_z(window_index,:));
fft_mic_window(window_index,:) = fft(DataWindow_mic(window_index,:));

temp = fftshift(abs(fft_acc_x_window(window_index,:)));
fft_acc_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_acc_y_window(window_index,:)));
fft_acc_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_acc_z_window(window_index,:)));
fft_acc_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_mag_x_window(window_index,:)));
fft_mag_x_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_mag_y_window(window_index,:)));
fft_mag_y_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_mag_z_window(window_index,:)));
fft_mag_z_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_mic_window(window_index,:)));
fft_mic_window_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
end


%% overlap windowing the data for without_condesator data
time_period1 = 1.9976;
window_size1 = 7.9904*1;
no_of_sample_for_window_size1 = ceil(window_size1/time_period1);

DataWindow_acc_x1 = OverlapWindow(accelerometer_x1,no_of_sample_for_window_size1);
DataWindow_acc_y1 = OverlapWindow(accelerometer_y1,no_of_sample_for_window_size1);
DataWindow_acc_z1 = OverlapWindow(accelerometer_z1,no_of_sample_for_window_size1);
DataWindow_mag_x1 = OverlapWindow(magnetometer_x1,no_of_sample_for_window_size1);
DataWindow_mag_y1 = OverlapWindow(magnetometer_y1,no_of_sample_for_window_size1);
DataWindow_mag_z1 = OverlapWindow(magnetometer_z1,no_of_sample_for_window_size1);
DataWindow_mic1 = OverlapWindow(microphone1,no_of_sample_for_window_size1);

%% taking fft of the windows of without_condesator data
fft_acc_x_window1 = zeros(size(DataWindow_acc_x1));
fft_acc_y_window1 = zeros(size(DataWindow_acc_y1));
fft_acc_z_window1 = zeros(size(DataWindow_acc_z1));
fft_mag_x_window1 = zeros(size(DataWindow_mag_x1));
fft_mag_y_window1 = zeros(size(DataWindow_mag_y1));
fft_mag_z_window1 = zeros(size(DataWindow_mag_z1));
fft_mic_window1 = zeros(size(DataWindow_mic1));

fft_acc_x_window1_fftshifted = zeros(size(DataWindow_acc_x1,1),ceil(size(DataWindow_acc_x1,2)/2));
fft_acc_y_window1_fftshifted = zeros(size(DataWindow_acc_y1,1),ceil(size(DataWindow_acc_y1,2)/2));
fft_acc_z_window1_fftshifted = zeros(size(DataWindow_acc_z1,1),ceil(size(DataWindow_acc_z1,2)/2));
fft_mag_x_window1_fftshifted = zeros(size(DataWindow_mag_x1,1),ceil(size(DataWindow_mag_x1,2)/2));
fft_mag_y_window1_fftshifted = zeros(size(DataWindow_mag_x1,1),ceil(size(DataWindow_mag_y1,2)/2));
fft_mag_z_window1_fftshifted = zeros(size(DataWindow_mag_x1,1),ceil(size(DataWindow_mag_z1,2)/2));
fft_mic_window1_fftshifted = zeros(size(DataWindow_mic1,1),ceil(size(DataWindow_mic1,2)/2));
for window_index1 = 1 : size(DataWindow_acc_x1,1)
fft_acc_x_window1(window_index1,:) = fft(DataWindow_acc_x1(window_index1,:));
fft_acc_y_window1(window_index1,:) = fft(DataWindow_acc_y1(window_index1,:));
fft_acc_z_window1(window_index1,:) = fft(DataWindow_acc_z1(window_index1,:));
fft_mag_x_window1(window_index1,:) = fft(DataWindow_mag_x1(window_index1,:));
fft_mag_y_window1(window_index1,:) = fft(DataWindow_mag_y1(window_index1,:));
fft_mag_z_window1(window_index1,:) = fft(DataWindow_mag_z1(window_index1,:));
fft_mic_window1(window_index1,:) = fft(DataWindow_mic1(window_index1,:));

temp = fftshift(abs(fft_acc_x_window1(window_index,:)));
fft_acc_x_window1_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_acc_y_window1(window_index,:)));
fft_acc_y_window1_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_acc_z_window1(window_index,:)));
fft_acc_z_window1_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_mag_x_window1(window_index,:)));
fft_mag_x_window1_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_mag_y_window1(window_index,:)));
fft_mag_y_window1_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_mag_z_window1(window_index,:)));
fft_mag_z_window1_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
temp = fftshift(abs(fft_mic_window1(window_index,:)));
fft_mic_window1_fftshifted(window_index,:) = temp(1:ceil(no_of_sample_for_window_size/2));
end

%% with condesator
total_length = length(status);
window_size = 4;
ML_data_raw = [OverlapWindow(accelerometer_x,window_size) ...
    OverlapWindow(accelerometer_y,window_size) ...
    OverlapWindow(accelerometer_z,window_size) ...
    OverlapWindow(magnetometer_x,window_size) ...
    OverlapWindow(magnetometer_y,window_size) ...
    OverlapWindow(magnetometer_z,window_size) ...
    OverlapWindow(microphone,window_size) ...
    status(window_size:total_length)];
figure(1),
plot(accelerometer_z,'b'),
hold on,
plot(status*1000,'r'),
hold off,
% ylim([0 2500])
xlabel('recording index')
ylabel('accelerometer_z')
title('with condesator')

%% without  condensator

total_length1 = length(status1);
window_size1 = window_size;
ML_data_raw_1 = [OverlapWindow(accelerometer_x1,window_size) ...
    OverlapWindow(accelerometer_y1,window_size1) ...
    OverlapWindow(accelerometer_z1,window_size1) ...
    OverlapWindow(magnetometer_x1,window_size1) ...
    OverlapWindow(magnetometer_y1,window_size1) ...
    OverlapWindow(magnetometer_z1,window_size1) ...
    OverlapWindow(microphone1,window_size1) ...
    status1(window_size1:total_length1)];
figure(2),
plot(accelerometer_z1,'b'),
hold on,
plot(status1*1000,'r'),
hold off,
% ylim([0 2500])
xlabel('recording index')
ylabel('accelerometer_z')
title('without condesator')

ML_data_raw_mean_deducted_condesator = [[ML_data_raw(:,1:28) ones(size(ML_data_raw,1),1)];[ML_data_raw_1(:,1:28) zeros(size(ML_data_raw_1,1),1)]];

figure(3)
plot(1:length(accelerometer_x1),accelerometer_x1,'b'),
hold on 
plot(length(accelerometer_x1)+1:length(accelerometer_x1)+length(accelerometer_x),accelerometer_x,'r'),
hold off
ylim([-300 300])
xlabel('recording index')
ylabel('accelerometer_x')
title('without condesator (in blue) vs with condesator(in red)')

figure(4)
plot(1:length(accelerometer_y1),accelerometer_y1,'b'),
hold on 
plot(length(accelerometer_y1)+1:length(accelerometer_y1)+length(accelerometer_y),accelerometer_y,'r'),
hold off
ylim([-110 100])
xlabel('recording index')
ylabel('accelerometer_y')
title('without condesator (in blue) vs with condesator(in red)')

figure(5)
plot(1:length(accelerometer_z1),accelerometer_z1,'b'),
hold on 
plot(length(accelerometer_z1)+1:length(accelerometer_z1)+length(accelerometer_z),accelerometer_z,'r'),
hold off
ylim([-100 600])
xlabel('recording index')
ylabel('accelerometer_z')
title('without condesator (in blue) vs with condesator(in red)')

figure(6)
plot(1:length(magnetometer_x1),magnetometer_x1,'b'),
hold on 
plot(length(magnetometer_x1)+1:length(magnetometer_x1)+length(magnetometer_x),magnetometer_x,'r'),
hold off
ylim([20000 27500])
xlabel('recording index')
ylabel('magnetometer_x')
title('without condesator (in blue) vs with condesator(in red)')

figure(7)
plot(1:length(magnetometer_y1),magnetometer_y1,'b'),
hold on 
plot(length(magnetometer_y1)+1:length(magnetometer_y1)+length(magnetometer_y),magnetometer_y,'r'),
hold off
ylim([8000 10000])
xlabel('recording index')
ylabel('magnetometer_y')
title('without condesator (in blue) vs with condesator(in red)')

figure(8)
plot(1:length(magnetometer_z1),magnetometer_z1,'b'),
hold on 
plot(length(magnetometer_z1)+1:length(magnetometer_z1)+length(magnetometer_z),magnetometer_z,'r'),
hold off
ylim([17300 18000])
xlabel('recording index')
ylabel('magnetometer_z')
title('without condesator (in blue) vs with condesator(in red)')

figure(9)
plot(1:length(microphone1),microphone1,'b'),
hold on 
plot(length(microphone1)+1:length(microphone1)+length(microphone),microphone,'r'),
hold off
ylim([-200 200])
xlabel('recording index')
ylabel('microphone')
title('without condesator (in blue) vs with condesator(in red)')

figure(10)
fft_acc_x_window_1 = fft_acc_x_window';
fft_acc_x_window_1 = fft_acc_x_window_1(:);
fft_acc_x_len = length(accelerometer_x);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_acc_x_len+1-no_of_sample_for_window_size,abs(fft_acc_x_window_1),'b')
% ylim([0 2000])
hold on
fft_acc_x_window1_1 = fft_acc_x_window1';
fft_acc_x_window1_1 = fft_acc_x_window1_1(:);
fft_acc_x_len1 = length(accelerometer_x1);
shift_on_x_axis = fft_acc_x_len+1-no_of_sample_for_window_size;
plot(shift_on_x_axis + (1/no_of_sample_for_window_size1):1/no_of_sample_for_window_size1:shift_on_x_axis  + fft_acc_x_len1+1-no_of_sample_for_window_size1,abs(fft_acc_x_window1_1),'r')

hold off
ylabel('frequency amplitude')
xlabel('recording index')
title('fft of accelerometer_x with condensator (in blue) vs without condensator (in red)')
legend({'fft of accelerometer_x with condensator','fft of accelerometer_x without condensator'},'Location','northeast')

figure(11)
fft_acc_y_window_1 = fft_acc_y_window';
fft_acc_y_window_1 = fft_acc_y_window_1(:);
fft_acc_y_len = length(accelerometer_y);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_acc_y_len+1-no_of_sample_for_window_size,abs(fft_acc_y_window_1),'b')
% ylim([0 2000])
hold on
fft_acc_y_window1_1 = fft_acc_y_window1';
fft_acc_y_window1_1 = fft_acc_y_window1_1(:);
fft_acc_y_len1 = length(accelerometer_y1);
shift_on_y_ayis = fft_acc_y_len+1-no_of_sample_for_window_size;
plot(shift_on_y_ayis + (1/no_of_sample_for_window_size1):1/no_of_sample_for_window_size1:shift_on_y_ayis  + fft_acc_y_len1+1-no_of_sample_for_window_size1,abs(fft_acc_y_window1_1),'r')

hold off
ylabel('frequency amplitude')
ylabel('recording indey')
title('fft of accelerometer_y with condensator (in blue) vs without condensator (in red)')
legend({'fft of accelerometer_y with condensator','fft of accelerometer_y without condensator'},'Location','northeast')

figure(12)
fft_acc_z_window_1 = fft_acc_z_window';
fft_acc_z_window_1 = fft_acc_z_window_1(:);
fft_acc_z_len = length(accelerometer_z);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_acc_z_len+1-no_of_sample_for_window_size,abs(fft_acc_z_window_1),'b')
% zlim([0 2000])
hold on
fft_acc_z_window1_1 = fft_acc_z_window1';
fft_acc_z_window1_1 = fft_acc_z_window1_1(:);
fft_acc_z_len1 = length(accelerometer_z1);
shift_on_z_azis = fft_acc_z_len+1-no_of_sample_for_window_size;
plot(shift_on_z_azis + (1/no_of_sample_for_window_size1):1/no_of_sample_for_window_size1:shift_on_z_azis  + fft_acc_z_len1+1-no_of_sample_for_window_size1,abs(fft_acc_z_window1_1),'r')

hold off
zlabel('frequencz amplitude')
zlabel('recording indez')
title('fft of accelerometer_z with condensator (in blue) vs without condensator (in red)')
legend({'fft of accelerometer_z with condensator','fft of accelerometer_z without condensator'},'Location','northeast')

figure(13)
fft_mag_x_window_1 = fft_mag_x_window';
fft_mag_x_window_1 = fft_mag_x_window_1(:);
fft_mag_x_len = length(magnetometer_x);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_mag_x_len+1-no_of_sample_for_window_size,abs(fft_mag_x_window_1),'b')
% ylim([0 2000])
hold on
fft_mag_x_window1_1 = fft_mag_x_window1';
fft_mag_x_window1_1 = fft_mag_x_window1_1(:);
fft_mag_x_len1 = length(magnetometer_x1);
shift_on_x_axis = fft_mag_x_len+1-no_of_sample_for_window_size;
plot(shift_on_x_axis + (1/no_of_sample_for_window_size1):1/no_of_sample_for_window_size1:shift_on_x_axis  + fft_mag_x_len1+1-no_of_sample_for_window_size1,abs(fft_mag_x_window1_1),'r')

hold off
ylabel('frequency amplitude')
xlabel('recording index')
title('fft of magnetometer_x with condensator (in blue) vs without condensator (in red)')
legend({'fft of magnetometer_x with condensator','fft of magnetometer_x without condensator'},'Location','northeast')

figure(14)
fft_mag_y_window_1 = fft_mag_y_window';
fft_mag_y_window_1 = fft_mag_y_window_1(:);
fft_mag_y_len = length(magnetometer_y);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_mag_y_len+1-no_of_sample_for_window_size,abs(fft_mag_y_window_1),'b')
% ylim([0 2000])
hold on
fft_mag_y_window1_1 = fft_mag_y_window1';
fft_mag_y_window1_1 = fft_mag_y_window1_1(:);
fft_mag_y_len1 = length(magnetometer_y1);
shift_on_y_ayis = fft_mag_y_len+1-no_of_sample_for_window_size;
plot(shift_on_y_ayis + (1/no_of_sample_for_window_size1):1/no_of_sample_for_window_size1:shift_on_y_ayis  + fft_mag_y_len1+1-no_of_sample_for_window_size1,abs(fft_mag_y_window1_1),'r')

hold off
ylabel('frequency amplitude')
ylabel('recording indey')
title('fft of magnetometer_y with condensator (in blue) vs without condensator (in red)')
legend({'fft of magnetometer_y with condensator','fft of magnetometer_y without condensator'},'Location','northeast')

figure(15)
fft_mag_z_window_1 = fft_mag_z_window';
fft_mag_z_window_1 = fft_mag_z_window_1(:);
fft_mag_z_len = length(magnetometer_z);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_mag_z_len+1-no_of_sample_for_window_size,abs(fft_mag_z_window_1),'b')
% zlim([0 2000])
hold on
fft_mag_z_window1_1 = fft_mag_z_window1';
fft_mag_z_window1_1 = fft_mag_z_window1_1(:);
fft_mag_z_len1 = length(magnetometer_z1);
shift_on_z_azis = fft_mag_z_len+1-no_of_sample_for_window_size;
plot(shift_on_z_azis + (1/no_of_sample_for_window_size1):1/no_of_sample_for_window_size1:shift_on_z_azis  + fft_mag_z_len1+1-no_of_sample_for_window_size1,abs(fft_mag_z_window1_1),'r')

hold off
zlabel('frequencz amplitude')
zlabel('recording indez')
title('fft of magnetometer_z with condensator (in blue) vs without condensator (in red)')
legend({'fft of magnetometer_z with condensator','fft of magnetometer_z without condensator'},'Location','northeast')

figure(16)
fft_mic_window_1 = fft_mic_window';
fft_mic_window_1 = fft_mic_window_1(:);
fft_mic_len = length(microphone);
plot(1/no_of_sample_for_window_size:1/no_of_sample_for_window_size:fft_mic_len+1-no_of_sample_for_window_size,abs(fft_mic_window_1),'b')
% ylim([0 2000])
hold on
fft_mic_window1_1 = fft_mic_window1';
fft_mic_window1_1 = fft_mic_window1_1(:);
fft_mic_len1 = length(microphone1);
shift_on_x_axis = fft_mic_len+1-no_of_sample_for_window_size;
plot(shift_on_x_axis + (1/no_of_sample_for_window_size1):1/no_of_sample_for_window_size1:shift_on_x_axis  + fft_mic_len1+1-no_of_sample_for_window_size1,abs(fft_mic_window1_1),'r')

hold off
ylabel('frequency amplitude')
xlabel('recording index')
title('fft of mic with condensator (in blue) vs without condensator (in red)')
legend({'fft of mic with condensator','fft of mic without condensator'},'Location','northeast')


%% with condesator
total_length = length(status);
ML_data_fft = [fft_acc_x_window ...
    fft_acc_y_window ...
    fft_acc_z_window ...
    fft_mag_x_window ...
    fft_mag_y_window ...
    fft_mag_z_window ...
    fft_mic_window ...
    status(window_size:total_length)];

%% without  condensator

total_length1 = length(status1);
ML_data_fft_1 = [fft_acc_x_window1 ...
    fft_acc_y_window1 ...
    fft_acc_z_window1 ...
    fft_mag_x_window1 ...
    fft_mag_y_window1 ...
    fft_mag_z_window1 ...
    fft_mic_window1 ...
    status1(window_size1:total_length1)];

ML_data_fft_mean_deducted_condesator = abs([[ML_data_fft(:,1:28) ones(size(ML_data_fft,1),1)];[ML_data_fft_1(:,1:28) zeros(size(ML_data_fft_1,1),1)]]);


%% with condesator magenometer only
total_length = length(status);
ML_data_fft_mag = [
    fft_mag_x_window ...
    fft_mag_y_window ...
    fft_mag_z_window ...
    status(window_size:total_length)];

%% without  condensator magenometer only

total_length1 = length(status1);
ML_data_fft_1_mag = [
    fft_mag_x_window1 ...
    fft_mag_y_window1 ...
    fft_mag_z_window1 ...
    status1(window_size1:total_length1)];

ML_data_fft_mean_deducted_condesator_mag = abs([[ML_data_fft_mag(:,1:3) ones(size(ML_data_fft_mag,1),1)];[ML_data_fft_1_mag(:,1:3) zeros(size(ML_data_fft_1_mag,1),1)]]);


%% with condesator magenometer only with fftshifted
total_length = length(status);
ML_data_fft_mag_fftshifted = [
    fft_mag_x_window_fftshifted ...
    fft_mag_y_window_fftshifted ...
    fft_mag_z_window_fftshifted ...
    status(window_size:total_length)];

%% without  condensator magenometer only with fftshifted

total_length1 = length(status1);
ML_data_fft_1_mag_fftshifted = [
    fft_mag_x_window1_fftshifted ...
    fft_mag_y_window1_fftshifted ...
    fft_mag_z_window1_fftshifted ...
    status1(window_size1:total_length1)];

ML_data_fft_mean_deducted_condesator_mag_fftshifted = abs([[ML_data_fft_mag(:,1:3) ones(size(ML_data_fft_mag,1),1)];[ML_data_fft_1_mag(:,1:3) zeros(size(ML_data_fft_1_mag,1),1)]]);
