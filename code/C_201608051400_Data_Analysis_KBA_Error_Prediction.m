% load('201607212100_Albrecht Szeitszam - 60905500_M_2015_top_6_Error.mat')
% clearvars -except Fehler_Location Fehler_total_unique
% load('Albrecht Szeitszam - 60905500_M_2015.mat')

Past_Limit = 50;

%%Error2

E_2_Location = Fehler_Location(find(Text_Fehler_I==2))';
E_2_History = zeros((Past_Limit + 1),24,length(E_2_Location));
Text_History = cell((Past_Limit + 1),length(E_2_Location));

for i=1:length(E_2_Location)
    E_2_History(:,1,i) = MaschineNr(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,2,i) = Sektion(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,3,i) = AlarmID_I(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,4,i) = TextID_I(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,5,i) = Text_I(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,6,i) = Klasse(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,7,i) = InProduktion(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,8,i) = Gekuppelt(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,9,i) = Ort_I(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,10,i) = Kommentar_I(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,11,i) = Confirmed(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,12,i) = Istwert1(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,13,i) = Istwert2(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,14,i) = Istwert3(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,15,i) = Istwert4(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,16,i) = BetrKennzeichen_I(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,17,i) = Zusatzinfo1(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,18,i) = Zusatzinfo2(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,19,i) = Zusatzinfo3(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,20,i) = Zusatzinfo4(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,21,i) = Zusatzinfo5(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,22,i) = Zusatzinfo6(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,23,i) = Zusatzinfo7(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History(:,24,i) = Zusatzinfo8(E_2_Location(i)-Past_Limit : E_2_Location(i));
    E_2_History_Location(:,i) = E_2_Location(i)-Past_Limit : E_2_Location(i);
end

intersect_2_1 = E_2_History(:,1,i);
intersect_2_2 = E_2_History(:,2,i);
intersect_2_3 = E_2_History(:,3,i);
intersect_2_4 = E_2_History(:,4,i);
intersect_2_5 = E_2_History(:,5,i);
intersect_2_6 = E_2_History(:,6,i);
intersect_2_7 = E_2_History(:,7,i);
intersect_2_8 = E_2_History(:,8,i);
intersect_2_9 = E_2_History(:,9,i);
intersect_2_10 = E_2_History(:,10,i);
intersect_2_11 = E_2_History(:,11,i);
intersect_2_12 = E_2_History(:,12,i);
intersect_2_13 = E_2_History(:,13,i);
intersect_2_14 = E_2_History(:,14,i);
intersect_2_15 = E_2_History(:,15,i);
intersect_2_16 = E_2_History(:,16,i);
intersect_2_17 = E_2_History(:,17,i);
intersect_2_18 = E_2_History(:,18,i);
intersect_2_19 = E_2_History(:,19,i);
intersect_2_20 = E_2_History(:,20,i);
intersect_2_21 = E_2_History(:,21,i);
intersect_2_22 = E_2_History(:,22,i);
intersect_2_23 = E_2_History(:,23,i);
intersect_2_24 = E_2_History(:,24,i);

for i = 2:length(E_2_Location)
    intersect_2_1 = intersect(intersect_2_1,E_2_History(:,1,i));
    intersect_2_2 = intersect(intersect_2_2,E_2_History(:,2,i));
    intersect_2_3 = intersect(intersect_2_3,E_2_History(:,3,i));
    intersect_2_4 = intersect(intersect_2_4,E_2_History(:,4,i));
    intersect_2_5 = intersect(intersect_2_5,E_2_History(:,5,i));
    intersect_2_6 = intersect(intersect_2_6,E_2_History(:,6,i));
    intersect_2_7 = intersect(intersect_2_7,E_2_History(:,7,i));
    intersect_2_8 = intersect(intersect_2_8,E_2_History(:,8,i));
    intersect_2_9 = intersect(intersect_2_9,E_2_History(:,9,i));
    intersect_2_10 = intersect(intersect_2_10,E_2_History(:,10,i));
    intersect_2_11 = intersect(intersect_2_11,E_2_History(:,11,i));
    intersect_2_12 = intersect(intersect_2_12,E_2_History(:,12,i));
    intersect_2_13 = intersect(intersect_2_13,E_2_History(:,13,i));
    intersect_2_14 = intersect(intersect_2_14,E_2_History(:,14,i));
    intersect_2_15 = intersect(intersect_2_15,E_2_History(:,15,i));
    intersect_2_16 = intersect(intersect_2_16,E_2_History(:,16,i));
    intersect_2_17 = intersect(intersect_2_17,E_2_History(:,17,i));
    intersect_2_18 = intersect(intersect_2_18,E_2_History(:,18,i));
    intersect_2_19 = intersect(intersect_2_19,E_2_History(:,19,i));
    intersect_2_20 = intersect(intersect_2_20,E_2_History(:,20,i));
    intersect_2_21 = intersect(intersect_2_21,E_2_History(:,21,i));
    intersect_2_22 = intersect(intersect_2_22,E_2_History(:,22,i));
    intersect_2_23 = intersect(intersect_2_23,E_2_History(:,23,i));
    intersect_2_24 = intersect(intersect_2_24,E_2_History(:,24,i));
end

%%Error8

E_8_Location = Fehler_Location(find(Text_Fehler_I==8))';
E_8_History = zeros(Past_Limit + 1,24,length(E_8_Location));

for i=1:length(E_8_Location)
    E_8_History(:,1,i) = MaschineNr(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,2,i) = Sektion(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,3,i) = AlarmID_I(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,4,i) = TextID_I(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,5,i) = Text_I(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,6,i) = Klasse(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,7,i) = InProduktion(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,8,i) = Gekuppelt(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,9,i) = Ort_I(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,10,i) = Kommentar_I(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,11,i) = Confirmed(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,12,i) = Istwert1(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,13,i) = Istwert2(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,14,i) = Istwert3(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,15,i) = Istwert4(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,16,i) = BetrKennzeichen_I(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,17,i) = Zusatzinfo1(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,18,i) = Zusatzinfo2(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,19,i) = Zusatzinfo3(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,20,i) = Zusatzinfo4(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,21,i) = Zusatzinfo5(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,22,i) = Zusatzinfo6(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,23,i) = Zusatzinfo7(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History(:,24,i) = Zusatzinfo8(E_8_Location(i)-Past_Limit : E_8_Location(i));
    E_8_History_Location(:,i) = E_8_Location(i)-Past_Limit : E_8_Location(i);
end

intersect_8_1 = E_8_History(:,1,i);
intersect_8_2 = E_8_History(:,2,i);
intersect_8_3 = E_8_History(:,3,i);
intersect_8_4 = E_8_History(:,4,i);
intersect_8_5 = E_8_History(:,5,i);
intersect_8_6 = E_8_History(:,6,i);
intersect_8_7 = E_8_History(:,7,i);
intersect_8_8 = E_8_History(:,8,i);
intersect_8_9 = E_8_History(:,9,i);
intersect_8_10 = E_8_History(:,10,i);
intersect_8_11 = E_8_History(:,11,i);
intersect_8_12 = E_8_History(:,12,i);
intersect_8_13 = E_8_History(:,13,i);
intersect_8_14 = E_8_History(:,14,i);
intersect_8_15 = E_8_History(:,15,i);
intersect_8_16 = E_8_History(:,16,i);
intersect_8_17 = E_8_History(:,17,i);
intersect_8_18 = E_8_History(:,18,i);
intersect_8_19 = E_8_History(:,19,i);
intersect_8_20 = E_8_History(:,20,i);
intersect_8_21 = E_8_History(:,21,i);
intersect_8_22 = E_8_History(:,22,i);
intersect_8_23 = E_8_History(:,23,i);
intersect_8_24 = E_8_History(:,24,i);

for i = 2:length(E_8_Location)
    intersect_8_1 = intersect(intersect_8_1,E_8_History(:,1,i));
    intersect_8_2 = intersect(intersect_8_2,E_8_History(:,2,i));
    intersect_8_3 = intersect(intersect_8_3,E_8_History(:,3,i));
    intersect_8_4 = intersect(intersect_8_4,E_8_History(:,4,i));
    intersect_8_5 = intersect(intersect_8_5,E_8_History(:,5,i));
    intersect_8_6 = intersect(intersect_8_6,E_8_History(:,6,i));
    intersect_8_7 = intersect(intersect_8_7,E_8_History(:,7,i));
    intersect_8_8 = intersect(intersect_8_8,E_8_History(:,8,i));
    intersect_8_9 = intersect(intersect_8_9,E_8_History(:,9,i));
    intersect_8_10 = intersect(intersect_8_10,E_8_History(:,10,i));
    intersect_8_11 = intersect(intersect_8_11,E_8_History(:,11,i));
    intersect_8_12 = intersect(intersect_8_12,E_8_History(:,12,i));
    intersect_8_13 = intersect(intersect_8_13,E_8_History(:,13,i));
    intersect_8_14 = intersect(intersect_8_14,E_8_History(:,14,i));
    intersect_8_15 = intersect(intersect_8_15,E_8_History(:,15,i));
    intersect_8_16 = intersect(intersect_8_16,E_8_History(:,16,i));
    intersect_8_17 = intersect(intersect_8_17,E_8_History(:,17,i));
    intersect_8_18 = intersect(intersect_8_18,E_8_History(:,18,i));
    intersect_8_19 = intersect(intersect_8_19,E_8_History(:,19,i));
    intersect_8_20 = intersect(intersect_8_20,E_8_History(:,20,i));
    intersect_8_21 = intersect(intersect_8_21,E_8_History(:,21,i));
    intersect_8_22 = intersect(intersect_8_22,E_8_History(:,22,i));
    intersect_8_23 = intersect(intersect_8_23,E_8_History(:,23,i));
    intersect_8_24 = intersect(intersect_8_24,E_8_History(:,24,i));    
end

%%Error9

E_9_Location = Fehler_Location(find(Text_Fehler_I==9))';
E_9_History = zeros(Past_Limit + 1,24,length(E_9_Location));

for i=1:length(E_9_Location)
    E_9_History(:,1,i) = MaschineNr(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,2,i) = Sektion(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,3,i) = AlarmID_I(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,4,i) = TextID_I(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,5,i) = Text_I(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,6,i) = Klasse(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,7,i) = InProduktion(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,8,i) = Gekuppelt(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,9,i) = Ort_I(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,10,i) = Kommentar_I(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,11,i) = Confirmed(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,12,i) = Istwert1(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,13,i) = Istwert2(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,14,i) = Istwert3(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,15,i) = Istwert4(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,16,i) = BetrKennzeichen_I(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,17,i) = Zusatzinfo1(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,18,i) = Zusatzinfo2(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,19,i) = Zusatzinfo3(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,20,i) = Zusatzinfo4(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,21,i) = Zusatzinfo5(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,22,i) = Zusatzinfo6(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,23,i) = Zusatzinfo7(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History(:,24,i) = Zusatzinfo8(E_9_Location(i)-Past_Limit : E_9_Location(i));
    E_9_History_Location(:,i) = E_9_Location(i)-Past_Limit : E_9_Location(i);
end

intersect_9_1 = E_9_History(:,1,i);
intersect_9_2 = E_9_History(:,2,i);
intersect_9_3 = E_9_History(:,3,i);
intersect_9_4 = E_9_History(:,4,i);
intersect_9_5 = E_9_History(:,5,i);
intersect_9_6 = E_9_History(:,6,i);
intersect_9_7 = E_9_History(:,7,i);
intersect_9_8 = E_9_History(:,8,i);
intersect_9_9 = E_9_History(:,9,i);
intersect_9_10 = E_9_History(:,10,i);
intersect_9_11 = E_9_History(:,11,i);
intersect_9_12 = E_9_History(:,12,i);
intersect_9_13 = E_9_History(:,13,i);
intersect_9_14 = E_9_History(:,14,i);
intersect_9_15 = E_9_History(:,15,i);
intersect_9_16 = E_9_History(:,16,i);
intersect_9_17 = E_9_History(:,17,i);
intersect_9_18 = E_9_History(:,18,i);
intersect_9_19 = E_9_History(:,19,i);
intersect_9_20 = E_9_History(:,20,i);
intersect_9_21 = E_9_History(:,21,i);
intersect_9_22 = E_9_History(:,22,i);
intersect_9_23 = E_9_History(:,23,i);
intersect_9_24 = E_9_History(:,24,i);

for i = 2:length(E_9_Location)
    intersect_9_1 = intersect(intersect_9_1,E_9_History(:,1,i));
    intersect_9_2 = intersect(intersect_9_2,E_9_History(:,2,i));
    intersect_9_3 = intersect(intersect_9_3,E_9_History(:,3,i));
    intersect_9_4 = intersect(intersect_9_4,E_9_History(:,4,i));
    intersect_9_5 = intersect(intersect_9_5,E_9_History(:,5,i));
    intersect_9_6 = intersect(intersect_9_6,E_9_History(:,6,i));
    intersect_9_7 = intersect(intersect_9_7,E_9_History(:,7,i));
    intersect_9_8 = intersect(intersect_9_8,E_9_History(:,8,i));
    intersect_9_9 = intersect(intersect_9_9,E_9_History(:,9,i));
    intersect_9_10 = intersect(intersect_9_10,E_9_History(:,10,i));
    intersect_9_11 = intersect(intersect_9_11,E_9_History(:,11,i));
    intersect_9_12 = intersect(intersect_9_12,E_9_History(:,12,i));
    intersect_9_13 = intersect(intersect_9_13,E_9_History(:,13,i));
    intersect_9_14 = intersect(intersect_9_14,E_9_History(:,14,i));
    intersect_9_15 = intersect(intersect_9_15,E_9_History(:,15,i));
    intersect_9_16 = intersect(intersect_9_16,E_9_History(:,16,i));
    intersect_9_17 = intersect(intersect_9_17,E_9_History(:,17,i));
    intersect_9_18 = intersect(intersect_9_18,E_9_History(:,18,i));
    intersect_9_19 = intersect(intersect_9_19,E_9_History(:,19,i));
    intersect_9_20 = intersect(intersect_9_20,E_9_History(:,20,i));
    intersect_9_21 = intersect(intersect_9_21,E_9_History(:,21,i));
    intersect_9_22 = intersect(intersect_9_22,E_9_History(:,22,i));
    intersect_9_23 = intersect(intersect_9_23,E_9_History(:,23,i));
    intersect_9_24 = intersect(intersect_9_24,E_9_History(:,24,i));    
end

%%Error41

E_41_Location = Fehler_Location(find(Text_Fehler_I==41))';
E_41_History = zeros(Past_Limit + 1,24,length(E_41_Location));

for i=1:length(E_41_Location)
    E_41_History(:,1,i) = MaschineNr(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,2,i) = Sektion(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,3,i) = AlarmID_I(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,4,i) = TextID_I(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,5,i) = Text_I(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,6,i) = Klasse(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,7,i) = InProduktion(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,8,i) = Gekuppelt(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,9,i) = Ort_I(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,10,i) = Kommentar_I(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,11,i) = Confirmed(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,12,i) = Istwert1(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,13,i) = Istwert2(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,14,i) = Istwert3(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,15,i) = Istwert4(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,16,i) = BetrKennzeichen_I(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,17,i) = Zusatzinfo1(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,18,i) = Zusatzinfo2(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,19,i) = Zusatzinfo3(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,20,i) = Zusatzinfo4(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,21,i) = Zusatzinfo5(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,22,i) = Zusatzinfo6(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,23,i) = Zusatzinfo7(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History(:,24,i) = Zusatzinfo8(E_41_Location(i)-Past_Limit : E_41_Location(i));
    E_41_History_Location(:,i) = E_41_Location(i)-Past_Limit : E_41_Location(i);
end

intersect_41_1 = E_41_History(:,1,i);
intersect_41_2 = E_41_History(:,2,i);
intersect_41_3 = E_41_History(:,3,i);
intersect_41_4 = E_41_History(:,4,i);
intersect_41_5 = E_41_History(:,5,i);
intersect_41_6 = E_41_History(:,6,i);
intersect_41_7 = E_41_History(:,7,i);
intersect_41_8 = E_41_History(:,8,i);
intersect_41_9 = E_41_History(:,9,i);
intersect_41_10 = E_41_History(:,10,i);
intersect_41_11 = E_41_History(:,11,i);
intersect_41_12 = E_41_History(:,12,i);
intersect_41_13 = E_41_History(:,13,i);
intersect_41_14 = E_41_History(:,14,i);
intersect_41_15 = E_41_History(:,15,i);
intersect_41_16 = E_41_History(:,16,i);
intersect_41_17 = E_41_History(:,17,i);
intersect_41_18 = E_41_History(:,18,i);
intersect_41_19 = E_41_History(:,19,i);
intersect_41_20 = E_41_History(:,20,i);
intersect_41_21 = E_41_History(:,21,i);
intersect_41_22 = E_41_History(:,22,i);
intersect_41_23 = E_41_History(:,23,i);
intersect_41_24 = E_41_History(:,24,i);

for i = 2:length(E_41_Location)
    intersect_41_1 = intersect(intersect_41_1,E_41_History(:,1,i));
    intersect_41_2 = intersect(intersect_41_2,E_41_History(:,2,i));
    intersect_41_3 = intersect(intersect_41_3,E_41_History(:,3,i));
    intersect_41_4 = intersect(intersect_41_4,E_41_History(:,4,i));
    intersect_41_5 = intersect(intersect_41_5,E_41_History(:,5,i));
    intersect_41_6 = intersect(intersect_41_6,E_41_History(:,6,i));
    intersect_41_7 = intersect(intersect_41_7,E_41_History(:,7,i));
    intersect_41_8 = intersect(intersect_41_8,E_41_History(:,8,i));
    intersect_41_9 = intersect(intersect_41_9,E_41_History(:,9,i));
    intersect_41_10 = intersect(intersect_41_10,E_41_History(:,10,i));
    intersect_41_11 = intersect(intersect_41_11,E_41_History(:,11,i));
    intersect_41_12 = intersect(intersect_41_12,E_41_History(:,12,i));
    intersect_41_13 = intersect(intersect_41_13,E_41_History(:,13,i));
    intersect_41_14 = intersect(intersect_41_14,E_41_History(:,14,i));
    intersect_41_15 = intersect(intersect_41_15,E_41_History(:,15,i));
    intersect_41_16 = intersect(intersect_41_16,E_41_History(:,16,i));
    intersect_41_17 = intersect(intersect_41_17,E_41_History(:,17,i));
    intersect_41_18 = intersect(intersect_41_18,E_41_History(:,18,i));
    intersect_41_19 = intersect(intersect_41_19,E_41_History(:,19,i));
    intersect_41_20 = intersect(intersect_41_20,E_41_History(:,20,i));
    intersect_41_21 = intersect(intersect_41_21,E_41_History(:,21,i));
    intersect_41_22 = intersect(intersect_41_22,E_41_History(:,22,i));
    intersect_41_23 = intersect(intersect_41_23,E_41_History(:,23,i));
    intersect_41_24 = intersect(intersect_41_24,E_41_History(:,24,i));    
end

%%Error99

E_99_Location = Fehler_Location(find(Text_Fehler_I==99))';
E_99_History = zeros(Past_Limit + 1,24,length(E_99_Location));

for i=1:length(E_99_Location)
    E_99_History(:,1,i) = MaschineNr(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,2,i) = Sektion(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,3,i) = AlarmID_I(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,4,i) = TextID_I(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,5,i) = Text_I(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,6,i) = Klasse(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,7,i) = InProduktion(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,8,i) = Gekuppelt(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,9,i) = Ort_I(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,10,i) = Kommentar_I(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,11,i) = Confirmed(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,12,i) = Istwert1(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,13,i) = Istwert2(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,14,i) = Istwert3(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,15,i) = Istwert4(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,16,i) = BetrKennzeichen_I(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,17,i) = Zusatzinfo1(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,18,i) = Zusatzinfo2(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,19,i) = Zusatzinfo3(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,20,i) = Zusatzinfo4(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,21,i) = Zusatzinfo5(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,22,i) = Zusatzinfo6(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,23,i) = Zusatzinfo7(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History(:,24,i) = Zusatzinfo8(E_99_Location(i)-Past_Limit : E_99_Location(i));
    E_99_History_Location(:,i) = E_99_Location(i)-Past_Limit : E_99_Location(i);
end

intersect_99_1 = E_99_History(:,1,i);
intersect_99_2 = E_99_History(:,2,i);
intersect_99_3 = E_99_History(:,3,i);
intersect_99_4 = E_99_History(:,4,i);
intersect_99_5 = E_99_History(:,5,i);
intersect_99_6 = E_99_History(:,6,i);
intersect_99_7 = E_99_History(:,7,i);
intersect_99_8 = E_99_History(:,8,i);
intersect_99_9 = E_99_History(:,9,i);
intersect_99_10 = E_99_History(:,10,i);
intersect_99_11 = E_99_History(:,11,i);
intersect_99_12 = E_99_History(:,12,i);
intersect_99_13 = E_99_History(:,13,i);
intersect_99_14 = E_99_History(:,14,i);
intersect_99_15 = E_99_History(:,15,i);
intersect_99_16 = E_99_History(:,16,i);
intersect_99_17 = E_99_History(:,17,i);
intersect_99_18 = E_99_History(:,18,i);
intersect_99_19 = E_99_History(:,19,i);
intersect_99_20 = E_99_History(:,20,i);
intersect_99_21 = E_99_History(:,21,i);
intersect_99_22 = E_99_History(:,22,i);
intersect_99_23 = E_99_History(:,23,i);
intersect_99_24 = E_99_History(:,24,i);

for i = 2:length(E_99_Location)
    intersect_99_1 = intersect(intersect_99_1,E_99_History(:,1,i));
    intersect_99_2 = intersect(intersect_99_2,E_99_History(:,2,i));
    intersect_99_3 = intersect(intersect_99_3,E_99_History(:,3,i));
    intersect_99_4 = intersect(intersect_99_4,E_99_History(:,4,i));
    intersect_99_5 = intersect(intersect_99_5,E_99_History(:,5,i));
    intersect_99_6 = intersect(intersect_99_6,E_99_History(:,6,i));
    intersect_99_7 = intersect(intersect_99_7,E_99_History(:,7,i));
    intersect_99_8 = intersect(intersect_99_8,E_99_History(:,8,i));
    intersect_99_9 = intersect(intersect_99_9,E_99_History(:,9,i));
    intersect_99_10 = intersect(intersect_99_10,E_99_History(:,10,i));
    intersect_99_11 = intersect(intersect_99_11,E_99_History(:,11,i));
    intersect_99_12 = intersect(intersect_99_12,E_99_History(:,12,i));
    intersect_99_13 = intersect(intersect_99_13,E_99_History(:,13,i));
    intersect_99_14 = intersect(intersect_99_14,E_99_History(:,14,i));
    intersect_99_15 = intersect(intersect_99_15,E_99_History(:,15,i));
    intersect_99_16 = intersect(intersect_99_16,E_99_History(:,16,i));
    intersect_99_17 = intersect(intersect_99_17,E_99_History(:,17,i));
    intersect_99_18 = intersect(intersect_99_18,E_99_History(:,18,i));
    intersect_99_19 = intersect(intersect_99_19,E_99_History(:,19,i));
    intersect_99_20 = intersect(intersect_99_20,E_99_History(:,20,i));
    intersect_99_21 = intersect(intersect_99_21,E_99_History(:,21,i));
    intersect_99_22 = intersect(intersect_99_22,E_99_History(:,22,i));
    intersect_99_23 = intersect(intersect_99_23,E_99_History(:,23,i));
    intersect_99_24 = intersect(intersect_99_24,E_99_History(:,24,i));    
end


%%Error10

E_10_Location = Fehler_Location(find(Text_Fehler_I==10))';
E_10_History = zeros(Past_Limit + 1,24,length(E_10_Location));

for i=1:length(E_10_Location)
    E_10_History(:,1,i) = MaschineNr(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,2,i) = Sektion(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,3,i) = AlarmID_I(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,4,i) = TextID_I(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,5,i) = Text_I(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,6,i) = Klasse(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,7,i) = InProduktion(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,8,i) = Gekuppelt(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,9,i) = Ort_I(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,10,i) = Kommentar_I(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,11,i) = Confirmed(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,12,i) = Istwert1(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,13,i) = Istwert2(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,14,i) = Istwert3(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,15,i) = Istwert4(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,16,i) = BetrKennzeichen_I(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,17,i) = Zusatzinfo1(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,18,i) = Zusatzinfo2(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,19,i) = Zusatzinfo3(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,20,i) = Zusatzinfo4(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,21,i) = Zusatzinfo5(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,22,i) = Zusatzinfo6(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,23,i) = Zusatzinfo7(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History(:,24,i) = Zusatzinfo8(E_10_Location(i)-Past_Limit : E_10_Location(i));
    E_10_History_Location(:,i) = E_10_Location(i)-Past_Limit : E_10_Location(i);
end

intersect_10_1 = E_10_History(:,1,i);
intersect_10_2 = E_10_History(:,2,i);
intersect_10_3 = E_10_History(:,3,i);
intersect_10_4 = E_10_History(:,4,i);
intersect_10_5 = E_10_History(:,5,i);
intersect_10_6 = E_10_History(:,6,i);
intersect_10_7 = E_10_History(:,7,i);
intersect_10_8 = E_10_History(:,8,i);
intersect_10_9 = E_10_History(:,9,i);
intersect_10_10 = E_10_History(:,10,i);
intersect_10_11 = E_10_History(:,11,i);
intersect_10_12 = E_10_History(:,12,i);
intersect_10_13 = E_10_History(:,13,i);
intersect_10_14 = E_10_History(:,14,i);
intersect_10_15 = E_10_History(:,15,i);
intersect_10_16 = E_10_History(:,16,i);
intersect_10_17 = E_10_History(:,17,i);
intersect_10_18 = E_10_History(:,18,i);
intersect_10_19 = E_10_History(:,19,i);
intersect_10_20 = E_10_History(:,20,i);
intersect_10_21 = E_10_History(:,21,i);
intersect_10_22 = E_10_History(:,22,i);
intersect_10_23 = E_10_History(:,23,i);
intersect_10_24 = E_10_History(:,24,i);

for i = 2:length(E_10_Location)
    intersect_10_1 = intersect(intersect_10_1,E_10_History(:,1,i));
    intersect_10_2 = intersect(intersect_10_2,E_10_History(:,2,i));
    intersect_10_3 = intersect(intersect_10_3,E_10_History(:,3,i));
    intersect_10_4 = intersect(intersect_10_4,E_10_History(:,4,i));
    intersect_10_5 = intersect(intersect_10_5,E_10_History(:,5,i));
    intersect_10_6 = intersect(intersect_10_6,E_10_History(:,6,i));
    intersect_10_7 = intersect(intersect_10_7,E_10_History(:,7,i));
    intersect_10_8 = intersect(intersect_10_8,E_10_History(:,8,i));
    intersect_10_9 = intersect(intersect_10_9,E_10_History(:,9,i));
    intersect_10_10 = intersect(intersect_10_10,E_10_History(:,10,i));
    intersect_10_11 = intersect(intersect_10_11,E_10_History(:,11,i));
    intersect_10_12 = intersect(intersect_10_12,E_10_History(:,12,i));
    intersect_10_13 = intersect(intersect_10_13,E_10_History(:,13,i));
    intersect_10_14 = intersect(intersect_10_14,E_10_History(:,14,i));
    intersect_10_15 = intersect(intersect_10_15,E_10_History(:,15,i));
    intersect_10_16 = intersect(intersect_10_16,E_10_History(:,16,i));
    intersect_10_17 = intersect(intersect_10_17,E_10_History(:,17,i));
    intersect_10_18 = intersect(intersect_10_18,E_10_History(:,18,i));
    intersect_10_19 = intersect(intersect_10_19,E_10_History(:,19,i));
    intersect_10_20 = intersect(intersect_10_20,E_10_History(:,20,i));
    intersect_10_21 = intersect(intersect_10_21,E_10_History(:,21,i));
    intersect_10_22 = intersect(intersect_10_22,E_10_History(:,22,i));
    intersect_10_23 = intersect(intersect_10_23,E_10_History(:,23,i));
    intersect_10_24 = intersect(intersect_10_24,E_10_History(:,24,i));    
end

%%ALL top 6

    intersect__1 = intersect(intersect(intersect(intersect(intersect(intersect_2_1,intersect_8_1),intersect_9_1),intersect_41_1),intersect_99_1),intersect_10_1);
    intersect__2 = intersect(intersect(intersect(intersect(intersect(intersect_2_2,intersect_8_2),intersect_9_2),intersect_41_2),intersect_99_2),intersect_10_2);
    intersect__3 = intersect(intersect(intersect(intersect(intersect(intersect_2_3,intersect_8_3),intersect_9_3),intersect_41_3),intersect_99_3),intersect_10_3);
    intersect__4 = intersect(intersect(intersect(intersect(intersect(intersect_2_4,intersect_8_4),intersect_9_4),intersect_41_4),intersect_99_4),intersect_10_4);
    intersect__5 = intersect(intersect(intersect(intersect(intersect(intersect_2_5,intersect_8_5),intersect_9_5),intersect_41_5),intersect_99_5),intersect_10_5);
    intersect__6 = intersect(intersect(intersect(intersect(intersect(intersect_2_6,intersect_8_6),intersect_9_6),intersect_41_6),intersect_99_6),intersect_10_6);
    intersect__7 = intersect(intersect(intersect(intersect(intersect(intersect_2_7,intersect_8_7),intersect_9_7),intersect_41_7),intersect_99_7),intersect_10_7);
    intersect__8 = intersect(intersect(intersect(intersect(intersect(intersect_2_8,intersect_8_8),intersect_9_8),intersect_41_8),intersect_99_8),intersect_10_8);
    intersect__9 = intersect(intersect(intersect(intersect(intersect(intersect_2_9,intersect_8_9),intersect_9_9),intersect_41_9),intersect_99_9),intersect_10_9);
    intersect__10 = intersect(intersect(intersect(intersect(intersect(intersect_2_10,intersect_8_10),intersect_9_10),intersect_41_10),intersect_99_10),intersect_10_10);
    intersect__11 = intersect(intersect(intersect(intersect(intersect(intersect_2_11,intersect_8_11),intersect_9_11),intersect_41_11),intersect_99_11),intersect_10_11);
    intersect__12 = intersect(intersect(intersect(intersect(intersect(intersect_2_12,intersect_8_12),intersect_9_12),intersect_41_12),intersect_99_12),intersect_10_12);
    intersect__13 = intersect(intersect(intersect(intersect(intersect(intersect_2_13,intersect_8_13),intersect_9_13),intersect_41_13),intersect_99_13),intersect_10_13);
    intersect__14 = intersect(intersect(intersect(intersect(intersect(intersect_2_14,intersect_8_14),intersect_9_14),intersect_41_14),intersect_99_14),intersect_10_14);
    intersect__15 = intersect(intersect(intersect(intersect(intersect(intersect_2_15,intersect_8_15),intersect_9_15),intersect_41_15),intersect_99_15),intersect_10_15);
    intersect__16 = intersect(intersect(intersect(intersect(intersect(intersect_2_16,intersect_8_16),intersect_9_16),intersect_41_16),intersect_99_16),intersect_10_16);
    intersect__17 = intersect(intersect(intersect(intersect(intersect(intersect_2_17,intersect_8_17),intersect_9_17),intersect_41_17),intersect_99_17),intersect_10_17);
    intersect__18 = intersect(intersect(intersect(intersect(intersect(intersect_2_18,intersect_8_18),intersect_9_18),intersect_41_18),intersect_99_18),intersect_10_18);
    intersect__19 = intersect(intersect(intersect(intersect(intersect(intersect_2_19,intersect_8_19),intersect_9_19),intersect_41_19),intersect_99_19),intersect_10_19);
    intersect__20 = intersect(intersect(intersect(intersect(intersect(intersect_2_20,intersect_8_20),intersect_9_20),intersect_41_20),intersect_99_20),intersect_10_20);
    intersect__21 = intersect(intersect(intersect(intersect(intersect(intersect_2_21,intersect_8_21),intersect_9_21),intersect_41_21),intersect_99_21),intersect_10_21);
    intersect__22 = intersect(intersect(intersect(intersect(intersect(intersect_2_22,intersect_8_22),intersect_9_22),intersect_41_22),intersect_99_22),intersect_10_22);
    intersect__23 = intersect(intersect(intersect(intersect(intersect(intersect_2_23,intersect_8_23),intersect_9_23),intersect_41_23),intersect_99_23),intersect_10_23);
    intersect__24 = intersect(intersect(intersect(intersect(intersect(intersect_2_24,intersect_8_24),intersect_9_24),intersect_41_24),intersect_99_24),intersect_10_24);
    
    
    E__History_Location = [E_2_History_Location E_8_History_Location E_9_History_Location E_41_History_Location E_99_History_Location E_10_History_Location];
    
    Istwert1_Text=unique(Text(find(Istwert1(unique(E__History_Location))==0)));
    Istwert2_Text=unique(Text(find(Istwert2(unique(E__History_Location))==0)));
    Istwert3_Text=unique(Text(find(Istwert3(unique(E__History_Location))==0)));
    Istwert4_Text=unique(Text(find(Istwert4(unique(E__History_Location))==0)));
    
    Zusatzinfo5_Text=unique(Text(find(Zusatzinfo5(unique(E__History_Location))==0)));
    Zusatzinfo7_Text=unique(Text(find(Zusatzinfo7(unique(E__History_Location))==0)));