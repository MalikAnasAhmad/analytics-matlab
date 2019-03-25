% load('ML_20170220.mat')

% [r,~,v]=find(myNeuralNetworkFunction(Features(:,:)'));
[r,~,v]=find(myNeuralNetworkFunction_201702201825(Features(:,:)'));
% myNeuralNetworkFunction_201702211645
% myNeuralNetworkFunction_201702201825
% myNeuralNetworkFunction_201602201813
figure(1)

subplot(4,1,1)

plot(Data(numel(Data)-numel(Labels)+1:end))
title('Original Data')

subplot(4,1,2)

plot(Labels)
title('Original Labels')

subplot(4,1,3)
plot(r)
title('Classified Labels')

subplot(4,1,4)
A=r;
A(find(r==4)) = 1;
A(find(r==3)) = 2;
A(find(r==2)) = 3;
A(find(r==1)) = 4;
% A(find(r==1)) = 2;
% A(find(r==2)) = 1;
% A(find(r==3)) = 1;
% A(find(r==4)) = 1;
% A(find(r==5)) = 3;
% A(find(r==6)) = 3;
% A(find(r==7)) = 4;
% A(find(r==8)) = 1;
% A(find(r==9)) = 1;
% A(table2array(innerjoin(table(find(r<749)),table(find(r>449))))) = 750;

plot(A)
title('Classified Thresholded Labels')

(numel(find(Labels - A)==0)./numel(A)) * 100

