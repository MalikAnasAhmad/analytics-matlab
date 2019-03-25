% load('201608231300_AS- 60905500_L_M_2015_relation')
% load('D:\Connectavo\Data\KBA\Albrecht Szeitszam - 60905500_L_2015.mat')
Overlap_Location = intersect(find(isfinite(Relation_L_M.Index_Z)),find(isfinite(Relation_L_M.Index_G)));
All_Location_M = unique(Relation_L_M.Index_G(Overlap_Location));%eliminating repitation
All_Error_Location_M = table(intersect(All_Location_M,E_All_Location),'VariableNames',{'Index_G'});%Common erronous location in M and L file

All_Error_Location_L = outerjoin(All_Error_Location_M,Relation_L_M,'Keys','Index_G');%Location for the Erronous Notification in L file

% Fehler_Location_L = unique(All_Error_Location_L.Index_Z(intersect(find(isfinite(All_Error_Location_L.Index_G_All_Error_Location_M)),find(isfinite(All_Error_Location_L.Index_G_Relation_L_M)))));%Location of Error in Z file
Fehler_Location_L = unique(All_Error_Location_L.Index_Z(intersect(find(isfinite(All_Error_Location_L.Index_G_All_Error_Location_M)),find(isfinite(All_Error_Location_L.Index_G_Relation_L_M)))));%Location of Error in Z file

Past_Limit = 50;
E_All_History = zeros((Past_Limit + 1),24,length(Fehler_Location_L));
Text_History = cell((Past_Limit + 1),length(Fehler_Location_L));

for i=1:length(Fehler_Location_L)
    E_All_History_Location_L(:,i) = Fehler_Location_L(i)-Past_Limit : Fehler_Location_L(i);
end

E_All_History_Location_L = E_All_History_Location_L(:,2:end);%ignoring first one as its history goes into negative
NE_All_History_Location_L = 1:numel(Array_Index);
NE_All_History_Location_L(unique(E_All_History_Location_L(:))) = [];

AI_Mean = mean(Array_Index,'omitnan');
AI_Error_History_Mean = mean(Array_Index(unique(E_All_History_Location_L(:))),'omitnan')
AI_NonError_History_Mean = mean(Array_Index(NE_All_History_Location_L),'omitnan')
AI_Std = std(Array_Index,'omitnan');
AI_Error_History_Std = std(Array_Index(unique(E_All_History_Location_L(:))),'omitnan')
AI_NonError_History_Std = std(Array_Index(NE_All_History_Location_L),'omitnan')
AI_Var = var(Array_Index,'omitnan');
AI_Error_History_Var = var(Array_Index(unique(E_All_History_Location_L(:))),'omitnan')
AI_NonError_History_Var = var(Array_Index(NE_All_History_Location_L),'omitnan')

VN_Mean = mean(Value_Number,'omitnan');
VN_Error_History_Mean = mean(Value_Number(unique(E_All_History_Location_L(:))),'omitnan')
VN_NonError_History_Mean = mean(Value_Number(NE_All_History_Location_L),'omitnan')
VN_Std = std(Value_Number,'omitnan');
VN_Error_History_Std = std(Value_Number(unique(E_All_History_Location_L(:))),'omitnan')
VN_NonError_History_Std = std(Value_Number(NE_All_History_Location_L),'omitnan')
VN_Var = var(Value_Number,'omitnan');
VN_Error_History_Var = var(Value_Number(unique(E_All_History_Location_L(:))),'omitnan')
VN_NonError_History_Var = var(Value_Number(NE_All_History_Location_L),'omitnan')

Z1_Mean = mean(Zusatzinfo1,'omitnan');
Z1_Error_History_Mean = mean(Zusatzinfo1(unique(E_All_History_Location_L(:))),'omitnan')
Z1_NonError_History_Mean = mean(Zusatzinfo1(NE_All_History_Location_L),'omitnan')
Z1_Std = std(Zusatzinfo1,'omitnan');
Z1_Error_History_Std = std(Zusatzinfo1(unique(E_All_History_Location_L(:))),'omitnan')
Z1_NonError_History_Std = std(Zusatzinfo1(NE_All_History_Location_L),'omitnan')
Z1_Var = var(Zusatzinfo1,'omitnan');
Z1_Error_History_Var = var(Zusatzinfo1(unique(E_All_History_Location_L(:))),'omitnan')
Z1_NonError_History_Var = var(Zusatzinfo1(NE_All_History_Location_L),'omitnan')

Z2_Mean = mean(Zusatzinfo2,'omitnan');
Z2_Error_History_Mean = mean(Zusatzinfo2(unique(E_All_History_Location_L(:))),'omitnan')
Z2_NonError_History_Mean = mean(Zusatzinfo2(NE_All_History_Location_L),'omitnan')
Z2_Std = std(Zusatzinfo2,'omitnan');
Z2_Error_History_Std = std(Zusatzinfo2(unique(E_All_History_Location_L(:))),'omitnan')
Z2_NonError_History_Std = std(Zusatzinfo2(NE_All_History_Location_L),'omitnan')
Z2_Var = var(Zusatzinfo2,'omitnan');
Z2_Error_History_Var = var(Zusatzinfo2(unique(E_All_History_Location_L(:))),'omitnan')
Z2_NonError_History_Var = var(Zusatzinfo2(NE_All_History_Location_L),'omitnan')

Z3_Mean = mean(Zusatzinfo3,'omitnan');
Z3_Error_History_Mean = mean(Zusatzinfo3(unique(E_All_History_Location_L(:))),'omitnan')
Z3_NonError_History_Mean = mean(Zusatzinfo3(NE_All_History_Location_L),'omitnan')
Z3_Std = std(Zusatzinfo3,'omitnan');
Z3_Error_History_Std = std(Zusatzinfo3(unique(E_All_History_Location_L(:))),'omitnan')
Z3_NonError_History_Std = std(Zusatzinfo3(NE_All_History_Location_L),'omitnan')
Z3_Var = var(Zusatzinfo3,'omitnan');
Z3_Error_History_Var = var(Zusatzinfo3(unique(E_All_History_Location_L(:))),'omitnan')
Z3_NonError_History_Var = var(Zusatzinfo3(NE_All_History_Location_L),'omitnan')

Z4_Mean = mean(Zusatzinfo4,'omitnan');
Z4_Error_History_Mean = mean(Zusatzinfo4(unique(E_All_History_Location_L(:))),'omitnan')
Z4_NonError_History_Mean = mean(Zusatzinfo4(NE_All_History_Location_L),'omitnan')
Z4_Std = std(Zusatzinfo4,'omitnan');
Z4_Error_History_Std = std(Zusatzinfo4(unique(E_All_History_Location_L(:))),'omitnan')
Z4_NonError_History_Std = std(Zusatzinfo4(NE_All_History_Location_L),'omitnan')
Z4_Var = var(Zusatzinfo4,'omitnan');
Z4_Error_History_Var = var(Zusatzinfo4(unique(E_All_History_Location_L(:))),'omitnan')
Z4_NonError_History_Var = var(Zusatzinfo4(NE_All_History_Location_L),'omitnan')

Z5_Mean = mean(Zusatzinfo5,'omitnan');
Z5_Error_History_Mean = mean(Zusatzinfo5(unique(E_All_History_Location_L(:))),'omitnan')
Z5_NonError_History_Mean = mean(Zusatzinfo5(NE_All_History_Location_L),'omitnan')
Z5_Std = std(Zusatzinfo5,'omitnan');
Z5_Error_History_Std = std(Zusatzinfo5(unique(E_All_History_Location_L(:))),'omitnan')
Z5_NonError_History_Std = std(Zusatzinfo5(NE_All_History_Location_L),'omitnan')
Z5_Var = var(Zusatzinfo5,'omitnan');
Z5_Error_History_Var = var(Zusatzinfo5(unique(E_All_History_Location_L(:))),'omitnan')
Z5_NonError_History_Var = var(Zusatzinfo5(NE_All_History_Location_L),'omitnan')

%%Error 2


Error_2_Location_M = table(intersect(All_Location_M,E_2_Location),'VariableNames',{'Index_G'});%Common erronous location in M and L file for Error2
Error_2_Location_L = outerjoin(Error_2_Location_M,Relation_L_M,'Keys','Index_G');%Location for the Error 2 Notifications in L file

Fehler_Location_L_E2 = unique(Error_2_Location_L.Index_Z(intersect(find(isfinite(Error_2_Location_L.Index_G_Error_2_Location_M)),find(isfinite(Error_2_Location_L.Index_G_Relation_L_M)))));%Location of Error 2 in Z file

% E_2_History_L = zeros((Past_Limit + 1),24,length(Fehler_Location_L_E2));
% Text_History_L_E2 = cell((Past_Limit + 1),length(Fehler_Location_L_E2));

for i=1:length(Fehler_Location_L_E2)
    E_2_History_Location_L(:,i) = Fehler_Location_L_E2(i)-Past_Limit : Fehler_Location_L_E2(i);
end

% E_2_History_Location_L = E_2_History_Location_L(:,2:end);%ignoring first one as its history goes into negative

AI_Error_2_History_Mean = mean(Array_Index(unique(E_2_History_Location_L(:))),'omitnan')
AI_Error_2_History_Std = std(Array_Index(unique(E_2_History_Location_L(:))),'omitnan')
AI_Error_2_History_Var = var(Array_Index(unique(E_2_History_Location_L(:))),'omitnan')

VN_Error_2_History_Mean = mean(Value_Number(unique(E_2_History_Location_L(:))),'omitnan')
VN_Error_2_History_Std = std(Value_Number(unique(E_2_History_Location_L(:))),'omitnan')
VN_Error_2_History_Var = var(Value_Number(unique(E_2_History_Location_L(:))),'omitnan')

Z1_Error_2_History_Mean = mean(Zusatzinfo1(unique(E_2_History_Location_L(:))),'omitnan')
Z1_Error_2_History_Std = std(Zusatzinfo1(unique(E_2_History_Location_L(:))),'omitnan')
Z1_Error_2_History_Var = var(Zusatzinfo1(unique(E_2_History_Location_L(:))),'omitnan')

Z2_Error_2_History_Mean = mean(Zusatzinfo2(unique(E_2_History_Location_L(:))),'omitnan')
Z2_Error_2_History_Std = std(Zusatzinfo2(unique(E_2_History_Location_L(:))),'omitnan')
Z2_Error_2_History_Var = var(Zusatzinfo2(unique(E_2_History_Location_L(:))),'omitnan')

Z3_Error_2_History_Mean = mean(Zusatzinfo3(unique(E_2_History_Location_L(:))),'omitnan')
Z3_Error_2_History_Std = std(Zusatzinfo3(unique(E_2_History_Location_L(:))),'omitnan')
Z3_Error_2_History_Var = var(Zusatzinfo3(unique(E_2_History_Location_L(:))),'omitnan')

Z4_Error_2_History_Mean = mean(Zusatzinfo4(unique(E_2_History_Location_L(:))),'omitnan')
Z4_Error_2_History_Std = std(Zusatzinfo4(unique(E_2_History_Location_L(:))),'omitnan')
Z4_Error_2_History_Var = var(Zusatzinfo4(unique(E_2_History_Location_L(:))),'omitnan')

Z5_Error_2_History_Mean = mean(Zusatzinfo5(unique(E_2_History_Location_L(:))),'omitnan')
Z5_Error_2_History_Std = std(Zusatzinfo5(unique(E_2_History_Location_L(:))),'omitnan')
Z5_Error_2_History_Var = var(Zusatzinfo5(unique(E_2_History_Location_L(:))),'omitnan')

%%Error 8


Error_8_Location_M = table(intersect(All_Location_M,E_8_Location),'VariableNames',{'Index_G'});%Common erronous location in M and L file for Error8
Error_8_Location_L = outerjoin(Error_8_Location_M,Relation_L_M,'Keys','Index_G');%Location for the Error 8 Notifications in L file

Fehler_Location_L_E8 = unique(Error_8_Location_L.Index_Z(intersect(find(isfinite(Error_8_Location_L.Index_G_Error_8_Location_M)),find(isfinite(Error_8_Location_L.Index_G_Relation_L_M)))));%Location of Error 8 in Z file

% E_8_History_L = zeros((Past_Limit + 1),24,length(Fehler_Location_L_E8));
% Text_History_L_E8 = cell((Past_Limit + 1),length(Fehler_Location_L_E8));

for i=1:length(Fehler_Location_L_E8)
    E_8_History_Location_L(:,i) = Fehler_Location_L_E8(i)-Past_Limit : Fehler_Location_L_E8(i);
end

% E_8_History_Location_L = E_8_History_Location_L(:,2:end);%ignoring first one as its history goes into negative

AI_Error_8_History_Mean = mean(Array_Index(unique(E_8_History_Location_L(:))),'omitnan')
AI_Error_8_History_Std = std(Array_Index(unique(E_8_History_Location_L(:))),'omitnan')
AI_Error_8_History_Var = var(Array_Index(unique(E_8_History_Location_L(:))),'omitnan')

VN_Error_8_History_Mean = mean(Value_Number(unique(E_8_History_Location_L(:))),'omitnan')
VN_Error_8_History_Std = std(Value_Number(unique(E_8_History_Location_L(:))),'omitnan')
VN_Error_8_History_Var = var(Value_Number(unique(E_8_History_Location_L(:))),'omitnan')

Z1_Error_8_History_Mean = mean(Zusatzinfo1(unique(E_8_History_Location_L(:))),'omitnan')
Z1_Error_8_History_Std = std(Zusatzinfo1(unique(E_8_History_Location_L(:))),'omitnan')
Z1_Error_8_History_Var = var(Zusatzinfo1(unique(E_8_History_Location_L(:))),'omitnan')

Z2_Error_8_History_Mean = mean(Zusatzinfo2(unique(E_8_History_Location_L(:))),'omitnan')
Z2_Error_8_History_Std = std(Zusatzinfo2(unique(E_8_History_Location_L(:))),'omitnan')
Z2_Error_8_History_Var = var(Zusatzinfo2(unique(E_8_History_Location_L(:))),'omitnan')

Z3_Error_8_History_Mean = mean(Zusatzinfo3(unique(E_8_History_Location_L(:))),'omitnan')
Z3_Error_8_History_Std = std(Zusatzinfo3(unique(E_8_History_Location_L(:))),'omitnan')
Z3_Error_8_History_Var = var(Zusatzinfo3(unique(E_8_History_Location_L(:))),'omitnan')

Z4_Error_8_History_Mean = mean(Zusatzinfo4(unique(E_8_History_Location_L(:))),'omitnan')
Z4_Error_8_History_Std = std(Zusatzinfo4(unique(E_8_History_Location_L(:))),'omitnan')
Z4_Error_8_History_Var = var(Zusatzinfo4(unique(E_8_History_Location_L(:))),'omitnan')

Z5_Error_8_History_Mean = mean(Zusatzinfo5(unique(E_8_History_Location_L(:))),'omitnan')
Z5_Error_8_History_Std = std(Zusatzinfo5(unique(E_8_History_Location_L(:))),'omitnan')
Z5_Error_8_History_Var = var(Zusatzinfo5(unique(E_8_History_Location_L(:))),'omitnan')

%%Error 9


Error_9_Location_M = table(intersect(All_Location_M,E_9_Location),'VariableNames',{'Index_G'});%Common erronous location in M and L file for Error2
Error_9_Location_L = outerjoin(Error_9_Location_M,Relation_L_M,'Keys','Index_G');%Location for the Error 9 Notifications in L file

Fehler_Location_L_E9 = unique(Error_9_Location_L.Index_Z(intersect(find(isfinite(Error_9_Location_L.Index_G_Error_9_Location_M)),find(isfinite(Error_9_Location_L.Index_G_Relation_L_M)))));%Location of Error 9 in Z file

% E_9_History_L = zeros((Past_Limit + 1),24,length(Fehler_Location_L_E9));
% Text_History_L_E9 = cell((Past_Limit + 1),length(Fehler_Location_L_E9));

for i=1:length(Fehler_Location_L_E9)
    E_9_History_Location_L(:,i) = Fehler_Location_L_E9(i)-Past_Limit : Fehler_Location_L_E9(i);
end

% E_9_History_Location_L = E_9_History_Location_L(:,2:end);%ignoring first one as its history goes into negative

AI_Error_9_History_Mean = mean(Array_Index(unique(E_9_History_Location_L(:))),'omitnan')
AI_Error_9_History_Std = std(Array_Index(unique(E_9_History_Location_L(:))),'omitnan')
AI_Error_9_History_Var = var(Array_Index(unique(E_9_History_Location_L(:))),'omitnan')

VN_Error_9_History_Mean = mean(Value_Number(unique(E_9_History_Location_L(:))),'omitnan')
VN_Error_9_History_Std = std(Value_Number(unique(E_9_History_Location_L(:))),'omitnan')
VN_Error_9_History_Var = var(Value_Number(unique(E_9_History_Location_L(:))),'omitnan')

Z1_Error_9_History_Mean = mean(Zusatzinfo1(unique(E_9_History_Location_L(:))),'omitnan')
Z1_Error_9_History_Std = std(Zusatzinfo1(unique(E_9_History_Location_L(:))),'omitnan')
Z1_Error_9_History_Var = var(Zusatzinfo1(unique(E_9_History_Location_L(:))),'omitnan')

Z2_Error_9_History_Mean = mean(Zusatzinfo2(unique(E_9_History_Location_L(:))),'omitnan')
Z2_Error_9_History_Std = std(Zusatzinfo2(unique(E_9_History_Location_L(:))),'omitnan')
Z2_Error_9_History_Var = var(Zusatzinfo2(unique(E_9_History_Location_L(:))),'omitnan')

Z3_Error_9_History_Mean = mean(Zusatzinfo3(unique(E_9_History_Location_L(:))),'omitnan')
Z3_Error_9_History_Std = std(Zusatzinfo3(unique(E_9_History_Location_L(:))),'omitnan')
Z3_Error_9_History_Var = var(Zusatzinfo3(unique(E_9_History_Location_L(:))),'omitnan')

Z4_Error_9_History_Mean = mean(Zusatzinfo4(unique(E_9_History_Location_L(:))),'omitnan')
Z4_Error_9_History_Std = std(Zusatzinfo4(unique(E_9_History_Location_L(:))),'omitnan')
Z4_Error_9_History_Var = var(Zusatzinfo4(unique(E_9_History_Location_L(:))),'omitnan')

Z5_Error_9_History_Mean = mean(Zusatzinfo5(unique(E_9_History_Location_L(:))),'omitnan')
Z5_Error_9_History_Std = std(Zusatzinfo5(unique(E_9_History_Location_L(:))),'omitnan')
Z5_Error_9_History_Var = var(Zusatzinfo5(unique(E_9_History_Location_L(:))),'omitnan')

%%Error 41


Error_41_Location_M = table(intersect(All_Location_M,E_41_Location),'VariableNames',{'Index_G'});%Common erronous location in M and L file for Error2
Error_41_Location_L = outerjoin(Error_41_Location_M,Relation_L_M,'Keys','Index_G');%Location for the Error 2 Notifications in L file

Fehler_Location_L_E41 = unique(Error_41_Location_L.Index_Z(intersect(find(isfinite(Error_41_Location_L.Index_G_Error_41_Location_M)),find(isfinite(Error_41_Location_L.Index_G_Relation_L_M)))));%Location of Error 41 in Z file

% E_41_History_L = zeros((Past_Limit + 1),24,length(Fehler_Location_L_E41));
% Text_History_L_E41 = cell((Past_Limit + 1),length(Fehler_Location_L_E41));

for i=1:length(Fehler_Location_L_E41)
    E_41_History_Location_L(:,i) = Fehler_Location_L_E41(i)-Past_Limit : Fehler_Location_L_E41(i);
end

% E_41_History_Location_L = E_41_History_Location_L(:,2:end);%ignoring first one as its history goes into negative

AI_Error_41_History_Mean = mean(Array_Index(unique(E_41_History_Location_L(:))),'omitnan')
AI_Error_41_History_Std = std(Array_Index(unique(E_41_History_Location_L(:))),'omitnan')
AI_Error_41_History_Var = var(Array_Index(unique(E_41_History_Location_L(:))),'omitnan')

VN_Error_41_History_Mean = mean(Value_Number(unique(E_41_History_Location_L(:))),'omitnan')
VN_Error_41_History_Std = std(Value_Number(unique(E_41_History_Location_L(:))),'omitnan')
VN_Error_41_History_Var = var(Value_Number(unique(E_41_History_Location_L(:))),'omitnan')

Z1_Error_41_History_Mean = mean(Zusatzinfo1(unique(E_41_History_Location_L(:))),'omitnan')
Z1_Error_41_History_Std = std(Zusatzinfo1(unique(E_41_History_Location_L(:))),'omitnan')
Z1_Error_41_History_Var = var(Zusatzinfo1(unique(E_41_History_Location_L(:))),'omitnan')

Z2_Error_41_History_Mean = mean(Zusatzinfo2(unique(E_41_History_Location_L(:))),'omitnan')
Z2_Error_41_History_Std = std(Zusatzinfo2(unique(E_41_History_Location_L(:))),'omitnan')
Z2_Error_41_History_Var = var(Zusatzinfo2(unique(E_41_History_Location_L(:))),'omitnan')

Z3_Error_41_History_Mean = mean(Zusatzinfo3(unique(E_41_History_Location_L(:))),'omitnan')
Z3_Error_41_History_Std = std(Zusatzinfo3(unique(E_41_History_Location_L(:))),'omitnan')
Z3_Error_41_History_Var = var(Zusatzinfo3(unique(E_41_History_Location_L(:))),'omitnan')

Z4_Error_41_History_Mean = mean(Zusatzinfo4(unique(E_41_History_Location_L(:))),'omitnan')
Z4_Error_41_History_Std = std(Zusatzinfo4(unique(E_41_History_Location_L(:))),'omitnan')
Z4_Error_41_History_Var = var(Zusatzinfo4(unique(E_41_History_Location_L(:))),'omitnan')

Z5_Error_41_History_Mean = mean(Zusatzinfo5(unique(E_41_History_Location_L(:))),'omitnan')
Z5_Error_41_History_Std = std(Zusatzinfo5(unique(E_41_History_Location_L(:))),'omitnan')
Z5_Error_41_History_Var = var(Zusatzinfo5(unique(E_41_History_Location_L(:))),'omitnan')

%%Error 99


Error_99_Location_M = table(intersect(All_Location_M,E_99_Location),'VariableNames',{'Index_G'});%Common erronous location in M and L file for Error2
Error_99_Location_L = outerjoin(Error_99_Location_M,Relation_L_M,'Keys','Index_G');%Location for the Error 2 Notifications in L file

Fehler_Location_L_E99 = unique(Error_99_Location_L.Index_Z(intersect(find(isfinite(Error_99_Location_L.Index_G_Error_99_Location_M)),find(isfinite(Error_99_Location_L.Index_G_Relation_L_M)))));%Location of Error 99 in Z file

% E_99_History_L = zeros((Past_Limit + 1),24,length(Fehler_Location_L_E99));
% Text_History_L_E99 = cell((Past_Limit + 1),length(Fehler_Location_L_E99));

for i=1:length(Fehler_Location_L_E99)
    E_99_History_Location_L(:,i) = Fehler_Location_L_E99(i)-Past_Limit : Fehler_Location_L_E99(i);
end

% E_99_History_Location_L = E_99_History_Location_L(:,2:end);%ignoring first one as its history goes into negative

AI_Error_99_History_Mean = mean(Array_Index(unique(E_99_History_Location_L(:))),'omitnan')
AI_Error_99_History_Std = std(Array_Index(unique(E_99_History_Location_L(:))),'omitnan')
AI_Error_99_History_Var = var(Array_Index(unique(E_99_History_Location_L(:))),'omitnan')

VN_Error_99_History_Mean = mean(Value_Number(unique(E_99_History_Location_L(:))),'omitnan')
VN_Error_99_History_Std = std(Value_Number(unique(E_99_History_Location_L(:))),'omitnan')
VN_Error_99_History_Var = var(Value_Number(unique(E_99_History_Location_L(:))),'omitnan')

Z1_Error_99_History_Mean = mean(Zusatzinfo1(unique(E_99_History_Location_L(:))),'omitnan')
Z1_Error_99_History_Std = std(Zusatzinfo1(unique(E_99_History_Location_L(:))),'omitnan')
Z1_Error_99_History_Var = var(Zusatzinfo1(unique(E_99_History_Location_L(:))),'omitnan')

Z2_Error_99_History_Mean = mean(Zusatzinfo2(unique(E_99_History_Location_L(:))),'omitnan')
Z2_Error_99_History_Std = std(Zusatzinfo2(unique(E_99_History_Location_L(:))),'omitnan')
Z2_Error_99_History_Var = var(Zusatzinfo2(unique(E_99_History_Location_L(:))),'omitnan')

Z3_Error_99_History_Mean = mean(Zusatzinfo3(unique(E_99_History_Location_L(:))),'omitnan')
Z3_Error_99_History_Std = std(Zusatzinfo3(unique(E_99_History_Location_L(:))),'omitnan')
Z3_Error_99_History_Var = var(Zusatzinfo3(unique(E_99_History_Location_L(:))),'omitnan')

Z4_Error_99_History_Mean = mean(Zusatzinfo4(unique(E_99_History_Location_L(:))),'omitnan')
Z4_Error_99_History_Std = std(Zusatzinfo4(unique(E_99_History_Location_L(:))),'omitnan')
Z4_Error_99_History_Var = var(Zusatzinfo4(unique(E_99_History_Location_L(:))),'omitnan')

Z5_Error_99_History_Mean = mean(Zusatzinfo5(unique(E_99_History_Location_L(:))),'omitnan')
Z5_Error_99_History_Std = std(Zusatzinfo5(unique(E_99_History_Location_L(:))),'omitnan')
Z5_Error_99_History_Var = var(Zusatzinfo5(unique(E_99_History_Location_L(:))),'omitnan')

%%Error 10


Error_10_Location_M = table(intersect(All_Location_M,E_10_Location),'VariableNames',{'Index_G'});%Common erronous location in M and L file for Error10
Error_10_Location_L = outerjoin(Error_10_Location_M,Relation_L_M,'Keys','Index_G');%Location for the Error 2 Notifications in L file

Fehler_Location_L_E10 = unique(Error_10_Location_L.Index_Z(intersect(find(isfinite(Error_10_Location_L.Index_G_Error_10_Location_M)),find(isfinite(Error_10_Location_L.Index_G_Relation_L_M)))));%Location of Error 10 in Z file

% E_10_History_L = zeros((Past_Limit + 1),24,length(Fehler_Location_L_E10));
% Text_History_L_E10 = cell((Past_Limit + 1),length(Fehler_Location_L_E10));

for i=1:length(Fehler_Location_L_E10)
    E_10_History_Location_L(:,i) = Fehler_Location_L_E10(i)-Past_Limit : Fehler_Location_L_E10(i);
end

% E_10_History_Location_L = E_10_History_Location_L(:,2:end);%ignoring first one as its history goes into negative

AI_Error_10_History_Mean = mean(Array_Index(unique(E_10_History_Location_L(:))),'omitnan')
AI_Error_10_History_Std = std(Array_Index(unique(E_10_History_Location_L(:))),'omitnan')
AI_Error_10_History_Var = var(Array_Index(unique(E_10_History_Location_L(:))),'omitnan')

VN_Error_10_History_Mean = mean(Value_Number(unique(E_10_History_Location_L(:))),'omitnan')
VN_Error_10_History_Std = std(Value_Number(unique(E_10_History_Location_L(:))),'omitnan')
VN_Error_10_History_Var = var(Value_Number(unique(E_10_History_Location_L(:))),'omitnan')

Z1_Error_10_History_Mean = mean(Zusatzinfo1(unique(E_10_History_Location_L(:))),'omitnan')
Z1_Error_10_History_Std = std(Zusatzinfo1(unique(E_10_History_Location_L(:))),'omitnan')
Z1_Error_10_History_Var = var(Zusatzinfo1(unique(E_10_History_Location_L(:))),'omitnan')

Z2_Error_10_History_Mean = mean(Zusatzinfo2(unique(E_10_History_Location_L(:))),'omitnan')
Z2_Error_10_History_Std = std(Zusatzinfo2(unique(E_10_History_Location_L(:))),'omitnan')
Z2_Error_10_History_Var = var(Zusatzinfo2(unique(E_10_History_Location_L(:))),'omitnan')

Z3_Error_10_History_Mean = mean(Zusatzinfo3(unique(E_10_History_Location_L(:))),'omitnan')
Z3_Error_10_History_Std = std(Zusatzinfo3(unique(E_10_History_Location_L(:))),'omitnan')
Z3_Error_10_History_Var = var(Zusatzinfo3(unique(E_10_History_Location_L(:))),'omitnan')

Z4_Error_10_History_Mean = mean(Zusatzinfo4(unique(E_10_History_Location_L(:))),'omitnan')
Z4_Error_10_History_Std = std(Zusatzinfo4(unique(E_10_History_Location_L(:))),'omitnan')
Z4_Error_10_History_Var = var(Zusatzinfo4(unique(E_10_History_Location_L(:))),'omitnan')

Z5_Error_10_History_Mean = mean(Zusatzinfo5(unique(E_10_History_Location_L(:))),'omitnan')
Z5_Error_10_History_Std = std(Zusatzinfo5(unique(E_10_History_Location_L(:))),'omitnan')
Z5_Error_10_History_Var = var(Zusatzinfo5(unique(E_10_History_Location_L(:))),'omitnan')
