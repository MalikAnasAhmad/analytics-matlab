%%Overlapping windows
load('201607271600_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_data_table_150_Overlapping_predataset.mat')

window_Size = 50;
Fehler_pred = buffer(Fehler_plot,window_Size,window_Size-1);
Fehler_I_pred = sum(Fehler_pred)';
Fehler_I_pred = [Fehler_I_pred(1:window_Size); Fehler_I_pred(((window_Size*2)+1):end); Fehler_I_pred((window_Size+1):(window_Size*2))];
clear Fehler_plot Fehler_pred
a=2
MaschineNr_pred = buffer(MaschineNr,window_Size,window_Size-1);
clear MaschineNr
Sektion_pred = buffer(Sektion,window_Size,window_Size-1);
clear Sektion
AlarmID_I_pred = buffer(AlarmID_I,window_Size,window_Size-1);
clear AlarmID_I
TextID_I_pred = buffer(TextID_I,window_Size,window_Size-1);
clear TextID_I
Text_I_pred = buffer(Text_I,window_Size,window_Size-1);
clear Text_I
Klasse_pred = buffer(Klasse,window_Size,window_Size-1);
clear Klasse
InProduktion_pred = buffer(InProduktion,window_Size,window_Size-1);
clear InProduktion
Gekuppelt_pred = buffer(Gekuppelt,window_Size,window_Size-1);
clear Gekuppelt
Ort_I_pred = buffer(Ort_I,window_Size,window_Size-1);
clear Ort_I
Kommentar_I_pred = buffer(Kommentar_I,window_Size,window_Size-1);
clear Kommentar_I
Confirmed_pred = buffer(Confirmed,window_Size,window_Size-1);
clear Confirmed
Istwert1_pred = buffer(Istwert1,window_Size,window_Size-1);
clear Istwert1
Istwert2_pred = buffer(Istwert2,window_Size,window_Size-1);
clear Istwert2
Istwert3_pred = buffer(Istwert3,window_Size,window_Size-1);
clear Istwert3
Istwert4_pred = buffer(Istwert4,window_Size,window_Size-1);
clear Istwert4
BetrKennzeichen_I_pred = buffer(BetrKennzeichen_I,window_Size,window_Size-1);
clear BetrKennzeichen_I
Zusatzinfo1_pred = buffer(Zusatzinfo1,window_Size,window_Size-1);
clear Zusatzinfo1
Zusatzinfo2_pred = buffer(Zusatzinfo2,window_Size,window_Size-1);
clear Zusatzinfo2
Zusatzinfo3_pred = buffer(Zusatzinfo3,window_Size,window_Size-1);
clear Zusatzinfo3
Zusatzinfo4_pred = buffer(Zusatzinfo4,window_Size,window_Size-1);
clear Zusatzinfo4
Zusatzinfo5_pred = buffer(Zusatzinfo5,window_Size,window_Size-1);
clear Zusatzinfo5
Zusatzinfo6_pred = buffer(Zusatzinfo6,window_Size,window_Size-1);
clear Zusatzinfo6
Zusatzinfo7_pred = buffer(Zusatzinfo7,window_Size,window_Size-1);
clear Zusatzinfo7
Zusatzinfo8_pred = buffer(Zusatzinfo8,window_Size,window_Size-1);
clear Zusatzinfo8

a=3

CL_ML_Prediction_data_table_50_Overlapping = table(Fehler_I_pred(window_Size+1:end),MaschineNr_pred(:,window_Size+1:end)',Sektion_pred(:,window_Size+1:end)',AlarmID_I_pred(:,window_Size+1:end)',TextID_I_pred(:,window_Size+1:end)',Text_I_pred(:,window_Size+1:end)',Klasse_pred(:,window_Size+1:end)',InProduktion_pred(:,window_Size+1:end)',Gekuppelt_pred(:,window_Size+1:end)',Ort_I_pred(:,window_Size+1:end)',Kommentar_I_pred(:,window_Size+1:end)',Confirmed_pred(:,window_Size+1:end)',Istwert1_pred(:,window_Size+1:end)',Istwert2_pred(:,window_Size+1:end)',Istwert3_pred(:,window_Size+1:end)',Istwert4_pred(:,window_Size+1:end)',BetrKennzeichen_I_pred(:,window_Size+1:end)',Zusatzinfo1_pred(:,window_Size+1:end)',Zusatzinfo2_pred(:,window_Size+1:end)',Zusatzinfo3_pred(:,window_Size+1:end)',Zusatzinfo4_pred(:,window_Size+1:end)',Zusatzinfo5_pred(:,window_Size+1:end)',Zusatzinfo6_pred(:,window_Size+1:end)',Zusatzinfo7_pred(:,window_Size+1:end)',Zusatzinfo8_pred(:,window_Size+1:end)');

a=4

save('201608032000_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_50_Overlapping_Number_Prediction.mat','-v7.3')

a=5
