% load('201608190700_Albrecht Szeitszam - 60905500_M_2015_Top_Six_Error.mat')
% clearvars -except Fehler_Location Fehler_total_unique
% load('Albrecht Szeitszam - 60905500_M_2015.mat')

Past_Limit = 50;

%%Error_All

E_All_Location = Fehler_Location(find(Text_Fehler_I))';
E_All_History = zeros((Past_Limit + 1),24,length(E_All_Location));
Text_History = cell((Past_Limit + 1),length(E_All_Location));

for i=1:length(E_All_Location)
    E_All_History(:,1,i) = MaschineNr(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,2,i) = Sektion(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,3,i) = AlarmID_I(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,4,i) = TextID_I(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,5,i) = Text_I(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,6,i) = Klasse(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,7,i) = InProduktion(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,8,i) = Gekuppelt(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,9,i) = Ort_I(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,10,i) = Kommentar_I(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,11,i) = Confirmed(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,12,i) = Istwert1(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,13,i) = Istwert2(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,14,i) = Istwert3(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,15,i) = Istwert4(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,16,i) = BetrKennzeichen_I(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,17,i) = Zusatzinfo1(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,18,i) = Zusatzinfo2(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,19,i) = Zusatzinfo3(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,20,i) = Zusatzinfo4(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,21,i) = Zusatzinfo5(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,22,i) = Zusatzinfo6(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,23,i) = Zusatzinfo7(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History(:,24,i) = Zusatzinfo8(E_All_Location(i)-Past_Limit : E_All_Location(i));
    E_All_History_Location(:,i) = E_All_Location(i)-Past_Limit : E_All_Location(i);
end

intersect_All_1 = E_All_History(:,1,i);
intersect_All_2 = E_All_History(:,2,i);
intersect_All_3 = E_All_History(:,3,i);
intersect_All_4 = E_All_History(:,4,i);
intersect_All_5 = E_All_History(:,5,i);
intersect_All_6 = E_All_History(:,6,i);
intersect_All_7 = E_All_History(:,7,i);
intersect_All_8 = E_All_History(:,8,i);
intersect_All_9 = E_All_History(:,9,i);
intersect_All_10 = E_All_History(:,10,i);
intersect_All_11 = E_All_History(:,11,i);
intersect_All_12 = E_All_History(:,12,i);
intersect_All_13 = E_All_History(:,13,i);
intersect_All_14 = E_All_History(:,14,i);
intersect_All_15 = E_All_History(:,15,i);
intersect_All_16 = E_All_History(:,16,i);
intersect_All_17 = E_All_History(:,17,i);
intersect_All_18 = E_All_History(:,18,i);
intersect_All_19 = E_All_History(:,19,i);
intersect_All_20 = E_All_History(:,20,i);
intersect_All_21 = E_All_History(:,21,i);
intersect_All_22 = E_All_History(:,22,i);
intersect_All_23 = E_All_History(:,23,i);
intersect_All_24 = E_All_History(:,24,i);

for i = 2:length(E_All_Location)
    intersect_All_1 = intersect(intersect_All_1,E_All_History(:,1,i));
    intersect_All_2 = intersect(intersect_All_2,E_All_History(:,2,i));
    intersect_All_3 = intersect(intersect_All_3,E_All_History(:,3,i));
    intersect_All_4 = intersect(intersect_All_4,E_All_History(:,4,i));
    intersect_All_5 = intersect(intersect_All_5,E_All_History(:,5,i));
    intersect_All_6 = intersect(intersect_All_6,E_All_History(:,6,i));
    intersect_All_7 = intersect(intersect_All_7,E_All_History(:,7,i));
    intersect_All_8 = intersect(intersect_All_8,E_All_History(:,8,i));
    intersect_All_9 = intersect(intersect_All_9,E_All_History(:,9,i));
    intersect_All_10 = intersect(intersect_All_10,E_All_History(:,10,i));
    intersect_All_11 = intersect(intersect_All_11,E_All_History(:,11,i));
    intersect_All_12 = intersect(intersect_All_12,E_All_History(:,12,i));
    intersect_All_13 = intersect(intersect_All_13,E_All_History(:,13,i));
    intersect_All_14 = intersect(intersect_All_14,E_All_History(:,14,i));
    intersect_All_15 = intersect(intersect_All_15,E_All_History(:,15,i));
    intersect_All_16 = intersect(intersect_All_16,E_All_History(:,16,i));
    intersect_All_17 = intersect(intersect_All_17,E_All_History(:,17,i));
    intersect_All_18 = intersect(intersect_All_18,E_All_History(:,18,i));
    intersect_All_19 = intersect(intersect_All_19,E_All_History(:,19,i));
    intersect_All_20 = intersect(intersect_All_20,E_All_History(:,20,i));
    intersect_All_21 = intersect(intersect_All_21,E_All_History(:,21,i));
    intersect_All_22 = intersect(intersect_All_22,E_All_History(:,22,i));
    intersect_All_23 = intersect(intersect_All_23,E_All_History(:,23,i));
    intersect_All_24 = intersect(intersect_All_24,E_All_History(:,24,i));
end