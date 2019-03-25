% C_201702061200_Test_Pseudo
GMM_Cluster_Identifier = fitgmdist(Features,7);
Labels_Identified = cluster(GMM_Cluster_Identifier,Features);

figure(1)
subplot(4,1,1)
% plot(Data(numel(Data)-numel(Labels)+1:end))
plot(Data)
title('Original Data')

subplot(4,1,2)

plot(Labels)
title('Original Labels')

subplot(4,1,3)
plot(Labels_Identified)
title('Classified Labels')

subplot(4,1,4)
A=Labels_Identified;
A(find(Labels_Identified==6)) = 1;
A(find(Labels_Identified==7)) = 0;
A(find(Labels_Identified==2)) = -1;%3%5
A(find(Labels_Identified==1)) = -2;
A(find(Labels_Identified==5)) = -3;%2%3
A(find(Labels_Identified==3)) = -4;
A(find(Labels_Identified==4)) = -5;

% A(table2array(innerjoin(table(find(r<749)),table(find(r>449))))) = 750;

plot(A)
title('Classified Thresholded Labels')

(numel(find((Labels - A)==0))./numel(A)) * 100

% while(1)
% C_201703071500_GMM
% if ans>70
% break
% end
% end