%%Case_1[110.1040]
%important OrtId1 [First part]
%important MeldId [Second part]

% load('201609051200_Sheetfed_377044.mat')

clear E_1_History_Location
Error_1_Location = intersect(find(OrtId1==110),find(MeldId==1040));
Location_110_4537 = intersect(find(OrtId1==110),find(MeldId==4537));
Location_112_2643 = intersect(find(OrtId1==112),find(MeldId==2643));
E_1_Code_110_4537 = zeros(1,numel(Error_1_Location));
E_1_Code_112_2643 = zeros(1,numel(Error_1_Location));

% Past_Limit=116244;
Past_Limit=50;

for i=1:length(Error_1_Location)
    E_1_History_Location(:,i) = Error_1_Location(i)-Past_Limit : Error_1_Location(i);
    
    if(~isempty(intersect(E_1_History_Location(:),Location_110_4537))) 
        E_1_Code_110_4537(i) = 1;%error histories followed by the claimed code 110.4537
    end
    if(~isempty(intersect(E_1_History_Location(:),Location_112_2643)))
        E_1_Code_112_2643(i) = 1;%error histories followed by the claimed code 112.2643
    end    
end

temp=find(E_1_Code_110_4537);
clear E_1_Code_110_4537
E_1_Code_110_4537=temp;
clear temp

temp=find(E_1_Code_112_2643);
clear E_1_Code_112_2643
E_1_Code_112_2643=temp;
clear temp

E_1_Code_110_4537_A_112_2643 = intersect(find(E_1_Code_110_4537),find(E_1_Code_112_2643));

NE_1_History_Location = 1:numel(OrtId1);
NE_1_History_Location(E_1_History_Location) = [];


E_Location_110_4537 = intersect(Location_110_4537,E_1_History_Location(:));
E_Location_112_2643 = intersect(Location_112_2643,E_1_History_Location(:));

NE_Location_110_4537 = intersect(Location_110_4537,NE_1_History_Location(:));
NE_Location_112_2643 = intersect(Location_112_2643,NE_1_History_Location(:));

figure(1)

subplot(1,4,1)
[N_A, ] = histcounts(OrtId1(NE_1_History_Location),[min(OrtId1):max(OrtId1)+1]);
bar([min(OrtId1):max(OrtId1)],N_A,'r')
hold on
[N_1,] = histcounts(OrtId1(E_1_History_Location(:)),[min(OrtId1):max(OrtId1)+1]);
bar([min(OrtId1):max(OrtId1)],N_1 .*(sum(N_A)/sum(N_1)),'g')
hold off
title('Non-Erronous OrtId1 in RED')

subplot(1,4,2)
[N_1,] = histcounts(OrtId1(E_1_History_Location(:)),[min(OrtId1):max(OrtId1)+1]);
bar([min(OrtId1):max(OrtId1)],N_1 .*(sum(N_A)/sum(N_1)),'y')
hold on
[N_A, ] = histcounts(OrtId1(NE_1_History_Location),[min(OrtId1):max(OrtId1)+1]);
bar([min(OrtId1):max(OrtId1)],N_A,'c')
hold off
title('Erronous OrtId1 in YELLOW')

subplot(1,4,3)
[N_A, ] = histcounts(OrtId1(NE_1_History_Location),[min(OrtId1):max(OrtId1)+1]);
bar([min(OrtId1):max(OrtId1)],N_A,'r')
title('Non-Erronous OrtId1')

subplot(1,4,4)
[N_1,] = histcounts(OrtId1(E_1_History_Location(:)),[min(OrtId1):max(OrtId1)+1]);
bar([min(OrtId1):max(OrtId1)],N_1,'g')
title('Erronous OrtId1')

figure(2)

subplot(1,4,1)
[N_A, ] = histcounts(OrtId2(NE_1_History_Location),[min(OrtId2):max(OrtId2)+1]);
bar([min(OrtId2):max(OrtId2)],N_A,'r')
hold on
[N_1,] = histcounts(OrtId2(E_1_History_Location(:)),[min(OrtId2):max(OrtId2)+1]);
bar([min(OrtId2):max(OrtId2)],N_1 .*(sum(N_A)/sum(N_1)),'g')
hold off
title('Non-Erronous OrtId2 in RED')

subplot(1,4,2)
[N_1,] = histcounts(OrtId2(E_1_History_Location(:)),[min(OrtId2):max(OrtId2)+1]);
bar([min(OrtId2):max(OrtId2)],N_1 .*(sum(N_A)/sum(N_1)),'y')
hold on
[N_A, ] = histcounts(OrtId2(NE_1_History_Location),[min(OrtId2):max(OrtId2)+1]);
bar([min(OrtId2):max(OrtId2)],N_A,'c')
hold off
title('Erronous OrtId2 in YELLOW')

subplot(1,4,3)
[N_A, ] = histcounts(OrtId2(NE_1_History_Location),[min(OrtId2):max(OrtId2)+1]);
bar([min(OrtId2):max(OrtId2)],N_A,'r')
title('Non-Erronous OrtId2')

subplot(1,4,4)
[N_1,] = histcounts(OrtId2(E_1_History_Location(:)),[min(OrtId2):max(OrtId2)+1]);
bar([min(OrtId2):max(OrtId2)],N_1,'g')
title('Erronous OrtId2')

figure(3)

subplot(1,4,1)
[N_A, ] = histcounts(OrtId3(NE_1_History_Location),[min(OrtId3):max(OrtId3)+1]);
bar([min(OrtId3):max(OrtId3)],N_A,'r')
hold on
[N_1,] = histcounts(OrtId3(E_1_History_Location(:)),[min(OrtId3):max(OrtId3)+1]);
bar([min(OrtId3):max(OrtId3)],N_1 .*(sum(N_A)/sum(N_1)),'g')
hold off
title('Non-Erronous OrtId3 in RED')

subplot(1,4,2)
[N_1,] = histcounts(OrtId3(E_1_History_Location(:)),[min(OrtId3):max(OrtId3)+1]);
bar([min(OrtId3):max(OrtId3)],N_1 .*(sum(N_A)/sum(N_1)),'y')
hold on
[N_A, ] = histcounts(OrtId3(NE_1_History_Location),[min(OrtId3):max(OrtId3)+1]);
bar([min(OrtId3):max(OrtId3)],N_A,'c')
hold off
title('Erronous OrtId3 in YELLOW')

subplot(1,4,3)
[N_A, ] = histcounts(OrtId3(NE_1_History_Location),[min(OrtId3):max(OrtId3)+1]);
bar([min(OrtId3):max(OrtId3)],N_A,'r')
title('Non-Erronous OrtId3')

subplot(1,4,4)
[N_1,] = histcounts(OrtId3(E_1_History_Location(:)),[min(OrtId3):max(OrtId3)+1]);
bar([min(OrtId3):max(OrtId3)],N_1,'g')
title('Erronous OrtId3')

figure(4)

subplot(1,4,1)
[N_A, ] = histcounts(MeldId(NE_1_History_Location),[min(MeldId):max(MeldId)+1]);
bar([min(MeldId):max(MeldId)],N_A,'r')
hold on
[N_1,] = histcounts(MeldId(E_1_History_Location(:)),[min(MeldId):max(MeldId)+1]);
bar([min(MeldId):max(MeldId)],N_1 .*(sum(N_A)/sum(N_1)),'g')
hold off
title('Non-Erronous MeldId in RED')

subplot(1,4,2)
[N_1,] = histcounts(MeldId(E_1_History_Location(:)),[min(MeldId):max(MeldId)+1]);
bar([min(MeldId):max(MeldId)],N_1 .*(sum(N_A)/sum(N_1)),'y')
hold on
[N_A, E] = histcounts(MeldId(NE_1_History_Location),[min(MeldId):max(MeldId)+1]);
bar([min(MeldId):max(MeldId)],N_A,'c')
hold off
title('Erronous MeldId in YELLOW')

subplot(1,4,3)
[N_A, ] = histcounts(MeldId(NE_1_History_Location),[min(MeldId):max(MeldId)+1]);
bar([min(MeldId):max(MeldId)],N_A,'r')
title('Non-Erronous MeldId')

subplot(1,4,4)
[N_1,] = histcounts(MeldId(E_1_History_Location(:)),[min(MeldId):max(MeldId)+1]);
bar([min(MeldId):max(MeldId)],N_1,'g')
title('Erronous MeldId')

figure(5)

subplot(1,4,1)
[N_A, ] = histcounts(Wertigkeit(NE_1_History_Location),[min(Wertigkeit):max(Wertigkeit)+1]);
bar([min(Wertigkeit):max(Wertigkeit)],N_A,'r')
hold on
[N_1,] = histcounts(Wertigkeit(E_1_History_Location(:)),[min(Wertigkeit):max(Wertigkeit)+1]);
bar([min(Wertigkeit):max(Wertigkeit)],N_1 .*(sum(N_A)/sum(N_1)),'g')
hold off
title('Non-Erronous Wertigkeit in RED')

subplot(1,4,2)
[N_1,] = histcounts(Wertigkeit(E_1_History_Location(:)),[min(Wertigkeit):max(Wertigkeit)+1]);
bar([min(Wertigkeit):max(Wertigkeit)],N_1 .*(sum(N_A)/sum(N_1)),'y')
hold on
[N_A, ] = histcounts(Wertigkeit(NE_1_History_Location),[min(Wertigkeit):max(Wertigkeit)+1]);
bar([min(Wertigkeit):max(Wertigkeit)],N_A,'c')
hold off
title('Erronous Wertigkeit in YELLOW')

subplot(1,4,3)
[N_A, ] = histcounts(Wertigkeit(NE_1_History_Location),[min(Wertigkeit):max(Wertigkeit)+1]);
bar([min(Wertigkeit):max(Wertigkeit)],N_A,'r')
title('Non-Erronous Wertigkeit')

subplot(1,4,4)
[N_1,] = histcounts(Wertigkeit(E_1_History_Location(:)),[min(Wertigkeit):max(Wertigkeit)+1]);
bar([min(Wertigkeit):max(Wertigkeit)],N_1,'g')
title('Erronous Wertigkeit')

figure(6)

subplot(1,4,1)
[N_A, ] = histcounts(Speed(NE_1_History_Location),[min(Speed):max(Speed)+1]);
bar([min(Speed):max(Speed)],N_A,'r')
hold on
[N_1,] = histcounts(Speed(E_1_History_Location(:)),[min(Speed):max(Speed)+1]);
bar([min(Speed):max(Speed)],N_1 .*(sum(N_A)/sum(N_1)),'g')
hold off
title('Non-Erronous Speed in RED')

subplot(1,4,2)
[N_1,] = histcounts(Speed(E_1_History_Location(:)),[min(Speed):max(Speed)+1]);
bar([min(Speed):max(Speed)],N_1 .*(sum(N_A)/sum(N_1)),'y')
hold on
[N_A, ] = histcounts(Speed(NE_1_History_Location),[min(Speed):max(Speed)+1]);
bar([min(Speed):max(Speed)],N_A,'c')
hold off
title('Erronous Speed in YELLOW')

subplot(1,4,3)
[N_A, ] = histcounts(Speed(NE_1_History_Location),[min(Speed):max(Speed)+1]);
bar([min(Speed):max(Speed)],N_A,'r')
title('Non-Erronous Speed')

subplot(1,4,4)
[N_1,] = histcounts(Speed(E_1_History_Location(:)),[min(Speed):max(Speed)+1]);
bar([min(Speed):max(Speed)],N_1,'g')
title('Erronous Speed')


% Most_Occuring_E_Speed_1 = find(N_1==max(N_1),1)-1
% Most_Occuring_E_Speed_1_No_Occurance = numel(find(Speed(E_1_History_Location(:))==Most_Occuring_E_Speed_1))
% Most_Occuring_E_Speed_1_No_Occurance_Percentage = (Most_Occuring_E_Speed_1_No_Occurance/numel(E_1_History_Location))*100
% 
% N_1(Most_Occuring_E_Speed_1+1)=0;
% Most_Occuring_E_Speed_2 = find(N_1==max(N_1),1)-1
% Most_Occuring_E_Speed_2_No_Occurance = numel(find(Speed(E_1_History_Location(:))==Most_Occuring_E_Speed_2))
% Most_Occuring_E_Speed_2_No_Occurance_Percentage = (Most_Occuring_E_Speed_2_No_Occurance/numel(E_1_History_Location))*100
% 
% N_1(Most_Occuring_E_Speed_2+1)=0;
% Most_Occuring_E_Speed_3 = find(N_1==max(N_1),1)-1
% Most_Occuring_E_Speed_3_No_Occurance = numel(find(Speed(E_1_History_Location(:))==Most_Occuring_E_Speed_3))
% Most_Occuring_E_Speed_3_No_Occurance_Percentage = (Most_Occuring_E_Speed_3_No_Occurance/numel(E_1_History_Location))*100
% 
% Most_Occuring_NE_Speed_1 = find(N_A==max(N_A),1)-1
% Most_Occuring_NE_Speed_1_No_Occurance = numel(find(Speed(NE_1_History_Location(:))==Most_Occuring_NE_Speed_1))
% Most_Occuring_NE_Speed_1_No_Occurance_Percentage = (Most_Occuring_NE_Speed_1_No_Occurance/numel(NE_1_History_Location))*100
% 
% N_A(Most_Occuring_Speed_1+1)=0;
% Most_Occuring_NE_Speed_2 = find(N_A==max(N_A),1)-1
% Most_Occuring_NE_Speed_2_No_Occurance = numel(find(Speed(NE_1_History_Location(:))==Most_Occuring_NE_Speed_2))
% Most_Occuring_NE_Speed_2_No_Occurance_Percentage = (Most_Occuring_NE_Speed_2_No_Occurance/numel(NE_1_History_Location))*100
% 
% N_A(Most_Occuring_Speed_1+1)=0;
% Most_Occuring_NE_Speed_3 = find(N_A==max(N_A),1)-1
% Most_Occuring_NE_Speed_3_No_Occurance = numel(find(Speed(NE_1_History_Location(:))==Most_Occuring_NE_Speed_3))
% Most_Occuring_NE_Speed_3_No_Occurance_Percentage = (Most_Occuring_NE_Speed_3_No_Occurance/numel(NE_1_History_Location))*100