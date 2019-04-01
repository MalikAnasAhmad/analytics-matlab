% CO(:,:,1) = zeros(25); % red
% CO(:,:,2) = ones(25).*repmat(linspace(0.5,0.6,25)',1,25); % green
% CO(:,:,3) = ones(25).*repmat(linspace(0,1,25)',1,25); % blue
% surf(amplitude_damaged,CO)
C_20190312_1700_Analogue_Devices_file_parsing
figure(1)
surf(amplitude_damaged,reshape(linspace(0.1,0.9,49*128),49,128))
hold on
surf(amplitude_good,reshape(linspace(0.1,1.9,49*128),49,128))
hold off

% C(:,:,1) = ones(49,128);%ones(49,128);
C(:,:,1) = reshape(linspace(0.5,1,49*128),49,128);
C(:,:,2) = zeros(49,128);%reshape(linspace(0,.1,49*128),49,128);
C(:,:,3) = zeros(49,128);%ones(49,128);
figure(2)
surf(amplitude_damaged,C)
hold on
% C(:,:,1) = ones(49,128);
% C(:,:,3) = reshape(linspace(0,.1,49*128),49,128);
% C(:,:,2) = ones(49,128);
C(:,:,1) = zeros(49,128);%ones(49,128);
C(:,:,2) = zeros(49,128);%reshape(linspace(0,.1,49*128),49,128);
% C(:,:,3) = ones(49,128);%ones(49,128);
C(:,:,3) = reshape(linspace(0.5,1,49*128),49,128);
surf(amplitude_good,C)
hold off
% axis([frequency_good 0 50 0 0.5])
zlabel('amplitude')
xlabel('frequency(Hz)')
title('damaged (in red) vs good (in blue) data for amplitude vs frequency')


figure(3)
X_damaged = repmat(frequency_damaged,49,1);
Y_damaged = repmat(1:49,128,1)';
Z_damaged = amplitude_damaged;

C(:,:,1) = reshape(linspace(0.5,1,49*128),49,128);
C(:,:,2) = zeros(49,128);
C(:,:,3) = zeros(49,128);

surf(amplitude_damaged,C)
hold on
%% preparing data for surf plot
X_good = repmat(frequency_good,49,1);
Y_good = repmat(1:49,128,1)';
Z_good = amplitude_good;
%% colour coding
C(:,:,1) = zeros(49,128);
C(:,:,2) = zeros(49,128);
C(:,:,3) = reshape(linspace(0.5,1,49*128),49,128);

surf(amplitude_good,C)
hold off

xlabel('frequency(Hz)')
ylabel('recording instance/example')
zlabel('amplitude')
title('damaged (in red) vs good (in blue) data for amplitude vs frequency')






