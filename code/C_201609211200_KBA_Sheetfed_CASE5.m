%%Case_5[4.1450]
%important OrtId1 [First part]
%important MeldId [Second part]

% load('201609051200_Sheetfed_377044.mat')

clear E_5_History_Location
Error_5_Location = intersect(find(OrtId1==4),find(MeldId==1450));
% Past_Limit=116244;
Past_Limit=50;
Error_5_Location(find(Error_5_Location<(Past_Limit+1)))=[];

Location_70_1252 = intersect(find(OrtId1==70),find(MeldId==1252));
% Location_112_2643 = intersect(find(OrtId1==112),find(MeldId==2643));
E_5_Code_70_1252 = zeros(1,numel(Error_5_Location));
% E_5_Code_112_2643 = zeros(1,numel(Error_5_Location));


for i=1:length(Error_5_Location)
    E_5_History_Location(:,i) = Error_5_Location(i)-Past_Limit : Error_5_Location(i);
    
    if(~isempty(intersect(E_5_History_Location(:),Location_70_1252))) 
        E_5_Code_70_1252(i) = 1;%error histories followed by the claimed code 70.1252
    end
%     if(~isempty(intersect(E_5_History_Location(:),Location_112_2643)))
%         E_5_Code_112_2643(i) = 1;%error histories followed by the claimed code 112.2643
%     end    
end

temp=find(E_5_Code_70_1252);
clear E_5_Code_70_1252
E_5_Code_70_1252=temp;
clear temp
% 
% temp=find(E_5_Code_112_2643);
% clear E_5_Code_112_2643
% E_5_Code_112_2643=temp;
% clear temp

% E_5_Code_110_4537_A_112_2643 = intersect(find(E_5_Code_110_4537),find(E_5_Code_112_2643));

NE_5_History_Location = 1:numel(OrtId1);
NE_5_History_Location(E_5_History_Location(:)) = [];


E_Location_70_1252 = intersect(Location_70_1252,E_5_History_Location(:));
% E_Location_112_2643 = intersect(Location_112_2643,E_5_History_Location(:));

NE_Location_70_1252 = intersect(Location_70_1252,NE_5_History_Location(:));
% NE_Location_112_2643 = intersect(Location_112_2643,NE_5_History_Location(:));

% figure(1)
% 
% subplot(1,4,1)
% [N_A, ] = histcounts(OrtId1(NE_5_History_Location),[min(OrtId1):max(OrtId1)+1]);
% bar([min(OrtId1):max(OrtId1)],N_A,'r')
% hold on
% [N_1,] = histcounts(OrtId1(E_5_History_Location(:)),[min(OrtId1):max(OrtId1)+1]);
% bar([min(OrtId1):max(OrtId1)],N_1 .*(sum(N_A)/sum(N_1)),'g')
% hold off
% title('Non-Erronous OrtId1 in RED')
% 
% subplot(1,4,2)
% [N_1,] = histcounts(OrtId1(E_5_History_Location(:)),[min(OrtId1):max(OrtId1)+1]);
% bar([min(OrtId1):max(OrtId1)],N_1 .*(sum(N_A)/sum(N_1)),'y')
% hold on
% [N_A, ] = histcounts(OrtId1(NE_5_History_Location),[min(OrtId1):max(OrtId1)+1]);
% bar([min(OrtId1):max(OrtId1)],N_A,'c')
% hold off
% title('Erronous OrtId1 in YELLOW')
% 
% subplot(1,4,3)
% [N_A, ] = histcounts(OrtId1(NE_5_History_Location),[min(OrtId1):max(OrtId1)+1]);
% bar([min(OrtId1):max(OrtId1)],N_A,'r')
% title('Non-Erronous OrtId1')
% 
% subplot(1,4,4)
% [N_1,] = histcounts(OrtId1(E_5_History_Location(:)),[min(OrtId1):max(OrtId1)+1]);
% bar([min(OrtId1):max(OrtId1)],N_1,'g')
% title('Erronous OrtId1')
% 
% figure(2)
% 
% subplot(1,4,1)
% [N_A, ] = histcounts(OrtId2(NE_5_History_Location),[min(OrtId2):max(OrtId2)+1]);
% bar([min(OrtId2):max(OrtId2)],N_A,'r')
% hold on
% [N_1,] = histcounts(OrtId2(E_5_History_Location(:)),[min(OrtId2):max(OrtId2)+1]);
% bar([min(OrtId2):max(OrtId2)],N_1 .*(sum(N_A)/sum(N_1)),'g')
% hold off
% title('Non-Erronous OrtId2 in RED')
% 
% subplot(1,4,2)
% [N_1,] = histcounts(OrtId2(E_5_History_Location(:)),[min(OrtId2):max(OrtId2)+1]);
% bar([min(OrtId2):max(OrtId2)],N_1 .*(sum(N_A)/sum(N_1)),'y')
% hold on
% [N_A, ] = histcounts(OrtId2(NE_5_History_Location),[min(OrtId2):max(OrtId2)+1]);
% bar([min(OrtId2):max(OrtId2)],N_A,'c')
% hold off
% title('Erronous OrtId2 in YELLOW')
% 
% subplot(1,4,3)
% [N_A, ] = histcounts(OrtId2(NE_5_History_Location),[min(OrtId2):max(OrtId2)+1]);
% bar([min(OrtId2):max(OrtId2)],N_A,'r')
% title('Non-Erronous OrtId2')
% 
% subplot(1,4,4)
% [N_1,] = histcounts(OrtId2(E_5_History_Location(:)),[min(OrtId2):max(OrtId2)+1]);
% bar([min(OrtId2):max(OrtId2)],N_1,'g')
% title('Erronous OrtId2')
% 
% figure(3)
% 
% subplot(1,4,1)
% [N_A, ] = histcounts(OrtId3(NE_5_History_Location),[min(OrtId3):max(OrtId3)+1]);
% bar([min(OrtId3):max(OrtId3)],N_A,'r')
% hold on
% [N_1,] = histcounts(OrtId3(E_5_History_Location(:)),[min(OrtId3):max(OrtId3)+1]);
% bar([min(OrtId3):max(OrtId3)],N_1 .*(sum(N_A)/sum(N_1)),'g')
% hold off
% title('Non-Erronous OrtId3 in RED')
% 
% subplot(1,4,2)
% [N_1,] = histcounts(OrtId3(E_5_History_Location(:)),[min(OrtId3):max(OrtId3)+1]);
% bar([min(OrtId3):max(OrtId3)],N_1 .*(sum(N_A)/sum(N_1)),'y')
% hold on
% [N_A, ] = histcounts(OrtId3(NE_5_History_Location),[min(OrtId3):max(OrtId3)+1]);
% bar([min(OrtId3):max(OrtId3)],N_A,'c')
% hold off
% title('Erronous OrtId3 in YELLOW')
% 
% subplot(1,4,3)
% [N_A, ] = histcounts(OrtId3(NE_5_History_Location),[min(OrtId3):max(OrtId3)+1]);
% bar([min(OrtId3):max(OrtId3)],N_A,'r')
% title('Non-Erronous OrtId3')
% 
% subplot(1,4,4)
% [N_1,] = histcounts(OrtId3(E_5_History_Location(:)),[min(OrtId3):max(OrtId3)+1]);
% bar([min(OrtId3):max(OrtId3)],N_1,'g')
% title('Erronous OrtId3')
% 
% figure(4)
% 
% subplot(1,4,1)
% [N_A, ] = histcounts(MeldId(NE_5_History_Location),[min(MeldId):max(MeldId)+1]);
% bar([min(MeldId):max(MeldId)],N_A,'r')
% hold on
% [N_1,] = histcounts(MeldId(E_5_History_Location(:)),[min(MeldId):max(MeldId)+1]);
% bar([min(MeldId):max(MeldId)],N_1 .*(sum(N_A)/sum(N_1)),'g')
% hold off
% title('Non-Erronous MeldId in RED')
% 
% subplot(1,4,2)
% [N_1,] = histcounts(MeldId(E_5_History_Location(:)),[min(MeldId):max(MeldId)+1]);
% bar([min(MeldId):max(MeldId)],N_1 .*(sum(N_A)/sum(N_1)),'y')
% hold on
% [N_A,] = histcounts(MeldId(NE_5_History_Location),[min(MeldId):max(MeldId)+1]);
% bar([min(MeldId):max(MeldId)],N_A,'c')
% hold off
% title('Erronous MeldId in YELLOW')
% 
% subplot(1,4,3)
% [N_A, ] = histcounts(MeldId(NE_5_History_Location),[min(MeldId):max(MeldId)+1]);
% bar([min(MeldId):max(MeldId)],N_A,'r')
% title('Non-Erronous MeldId')
% 
% subplot(1,4,4)
% [N_1,] = histcounts(MeldId(E_5_History_Location(:)),[min(MeldId):max(MeldId)+1]);
% bar([min(MeldId):max(MeldId)],N_1,'g')
% title('Erronous MeldId')
% 
% figure(5)
% 
% subplot(1,4,1)
% [N_A, ] = histcounts(Wertigkeit(NE_5_History_Location),[min(Wertigkeit):max(Wertigkeit)+1]);
% bar([min(Wertigkeit):max(Wertigkeit)],N_A,'r')
% hold on
% [N_1,] = histcounts(Wertigkeit(E_5_History_Location(:)),[min(Wertigkeit):max(Wertigkeit)+1]);
% bar([min(Wertigkeit):max(Wertigkeit)],N_1 .*(sum(N_A)/sum(N_1)),'g')
% hold off
% title('Non-Erronous Wertigkeit in RED')
% 
% subplot(1,4,2)
% [N_1,] = histcounts(Wertigkeit(E_5_History_Location(:)),[min(Wertigkeit):max(Wertigkeit)+1]);
% bar([min(Wertigkeit):max(Wertigkeit)],N_1 .*(sum(N_A)/sum(N_1)),'y')
% hold on
% [N_A, ] = histcounts(Wertigkeit(NE_5_History_Location),[min(Wertigkeit):max(Wertigkeit)+1]);
% bar([min(Wertigkeit):max(Wertigkeit)],N_A,'c')
% hold off
% title('Erronous Wertigkeit in YELLOW')
% 
% subplot(1,4,3)
% [N_A, ] = histcounts(Wertigkeit(NE_5_History_Location),[min(Wertigkeit):max(Wertigkeit)+1]);
% bar([min(Wertigkeit):max(Wertigkeit)],N_A,'r')
% title('Non-Erronous Wertigkeit')
% 
% subplot(1,4,4)
% [N_1,] = histcounts(Wertigkeit(E_5_History_Location(:)),[min(Wertigkeit):max(Wertigkeit)+1]);
% bar([min(Wertigkeit):max(Wertigkeit)],N_1,'g')
% title('Erronous Wertigkeit')
% 
% figure(6)
% 
% subplot(1,4,1)
% [N_A, ] = histcounts(Speed(NE_5_History_Location),[min(Speed):max(Speed)+1]);
% bar([min(Speed):max(Speed)],N_A,'r')
% hold on
% [N_1,] = histcounts(Speed(E_5_History_Location(:)),[min(Speed):max(Speed)+1]);
% bar([min(Speed):max(Speed)],N_1 .*(sum(N_A)/sum(N_1)),'g')
% hold off
% title('Non-Erronous Speed in RED')
% 
% subplot(1,4,2)
% [N_1,] = histcounts(Speed(E_5_History_Location(:)),[min(Speed):max(Speed)+1]);
% bar([min(Speed):max(Speed)],N_1 .*(sum(N_A)/sum(N_1)),'y')
% hold on
% [N_A, ] = histcounts(Speed(NE_5_History_Location),[min(Speed):max(Speed)+1]);
% bar([min(Speed):max(Speed)],N_A,'c')
% hold off
% title('Erronous Speed in YELLOW')
% 
% subplot(1,4,3)
% [N_A, ] = histcounts(Speed(NE_5_History_Location),[min(Speed):max(Speed)+1]);
% bar([min(Speed):max(Speed)],N_A,'r')
% title('Non-Erronous Speed')
% 
% subplot(1,4,4)
% [N_1,] = histcounts(Speed(E_5_History_Location(:)),[min(Speed):max(Speed)+1]);
% bar([min(Speed):max(Speed)],N_1,'g')
% title('Erronous Speed')
% 
% 
% % Most_Occuring_E_Speed_1 = find(N_1==max(N_1),1)-1
% % Most_Occuring_E_Speed_5_No_Occurance = numel(find(Speed(E_5_History_Location(:))==Most_Occuring_E_Speed_1))
% % Most_Occuring_E_Speed_5_No_Occurance_Percentage = (Most_Occuring_E_Speed_5_No_Occurance/numel(E_5_History_Location))*100
% % 
% % N_1(Most_Occuring_E_Speed_1+1)=0;
% % Most_Occuring_E_Speed_2 = find(N_1==max(N_1),1)-1
% % Most_Occuring_E_Speed_2_No_Occurance = numel(find(Speed(E_5_History_Location(:))==Most_Occuring_E_Speed_2))
% % Most_Occuring_E_Speed_2_No_Occurance_Percentage = (Most_Occuring_E_Speed_2_No_Occurance/numel(E_5_History_Location))*100
% % 
% % N_1(Most_Occuring_E_Speed_2+1)=0;
% % Most_Occuring_E_Speed_3 = find(N_1==max(N_1),1)-1
% % Most_Occuring_E_Speed_5_No_Occurance = numel(find(Speed(E_5_History_Location(:))==Most_Occuring_E_Speed_3))
% % Most_Occuring_E_Speed_5_No_Occurance_Percentage = (Most_Occuring_E_Speed_5_No_Occurance/numel(E_5_History_Location))*100
% % 
% % Most_Occuring_NE_Speed_1 = find(N_A==max(N_A),1)-1
% % Most_Occuring_NE_Speed_5_No_Occurance = numel(find(Speed(NE_5_History_Location(:))==Most_Occuring_NE_Speed_1))
% % Most_Occuring_NE_Speed_5_No_Occurance_Percentage = (Most_Occuring_NE_Speed_5_No_Occurance/numel(NE_5_History_Location))*100
% % 
% % N_A(Most_Occuring_Speed_1+1)=0;
% % Most_Occuring_NE_Speed_2 = find(N_A==max(N_A),1)-1
% % Most_Occuring_NE_Speed_2_No_Occurance = numel(find(Speed(NE_5_History_Location(:))==Most_Occuring_NE_Speed_2))
% % Most_Occuring_NE_Speed_2_No_Occurance_Percentage = (Most_Occuring_NE_Speed_2_No_Occurance/numel(NE_5_History_Location))*100
% % 
% % N_A(Most_Occuring_Speed_1+1)=0;
% % Most_Occuring_NE_Speed_3 = find(N_A==max(N_A),1)-1
% % Most_Occuring_NE_Speed_5_No_Occurance = numel(find(Speed(NE_5_History_Location(:))==Most_Occuring_NE_Speed_3))
% % Most_Occuring_NE_Speed_5_No_Occurance_Percentage = (Most_Occuring_NE_Speed_5_No_Occurance/numel(NE_5_History_Location))*100


clear M_E
clear M_E_percentage
clear M_NE_percentage

M_E = unique(MeldId(unique(E_5_History_Location(:))));

for i=1:numel(M_E)
    M_E_percentage(i) = numel(find((MeldId(unique(E_5_History_Location(:))))==M_E(i)))./numel(unique(E_5_History_Location(:)));
end

M_E_percentage=M_E_percentage';

for i=1:numel(M_E)
    M_NE_percentage(i) = numel(find((MeldId(unique(NE_5_History_Location(:))))==M_E(i)))./numel(unique(NE_5_History_Location(:)));
end

M_NE_percentage = M_NE_percentage';

numel(E_5_History_Location)