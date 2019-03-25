C_20190320_1300_Analogue_Devices_file_parsing
figure(1),
plot(accelarometer_x,'b'),
hold on,
plot (status*2000,'r'),
hold off
title('x-axis accelarometer')
ylabel('amplitude')
xlabel('recording index')
ylim([1500 6500])

figure(2),
plot(accelarometer_y,'b'),
hold on,
plot (status*2000,'r'),
hold off
title('y-axis accelarometer')
ylabel('amplitude')
xlabel('recording index')
ylim([1500 6500])

figure(3),
plot(accelarometer_z,'b'),
hold on,
plot (status*2000,'r'),
hold off
title('z-axis accelarometer')
ylabel('amplitude')
xlabel('recording index')
ylim([1500 6500])

% %% preparing data for 3d fft
% data = zeros(346,346,346);
% for index =1:346
% data(1+index,1,1) = accelarometer_x(index);
% data(1,1+index,1) = accelarometer_y(index);
% data(1,1,1+index) = accelarometer_z(index);
% end

% x = repmat(accelarometer_x,1,346);
% y = repmat(accelarometer_y,1,346);
% z = repmat(accelarometer_z,1,346);
% for index =1:346
% data(1+index,1,1) = accelarometer_x(index);
% data(1,1+index,1) = accelarometer_y(index);
% data(1,1,1+index) = accelarometer_z(index);
% end