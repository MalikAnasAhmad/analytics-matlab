%% reading the file
C_20190320_read_Comox_data_as_csv
clear assetUid7 deviceUid01 timestamp1553028694663
%% parsing the accelarometer data
accelarometer = strrep(datareading26(9:14:end) , 'data:{"reading":"', '');
accelarometer = strrep(accelarometer , '"', ' ');
accelarometer  = char(accelarometer)';
% accelarometer  = accelarometer';
accelarometer = cell2mat(textscan(accelarometer,'%f','delimiter',' '));
accelarometer_x = accelarometer(1:3:end);
accelarometer_x = accelarometer_x(~isnan(accelarometer_x));
accelarometer_y = accelarometer(2:3:end);
accelarometer_y = accelarometer_y(~isnan(accelarometer_y));
accelarometer_z = accelarometer(3:3:end);
accelarometer_z = accelarometer_z(~isnan(accelarometer_z));
clear accelarometer
%% parsing the status data
status = strrep(datareading26(13:14:end) , 'data:{"reading":"', '');
status = strrep(status , '"', ' ');
status  = str2double(status);

clear datareading26