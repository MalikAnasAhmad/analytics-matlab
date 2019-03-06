%%Overlapping windows
load('201607271600_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_data_table_150_Overlapping_predataset.mat')
a=1
Fehler_pred = buffer(Fehler_plot,150,149);
Fehler_I_pred = sum(Fehler_pred)';
Fehler_I_pred = [Fehler_I_pred(1:150); Fehler_I_pred(301:end); Fehler_I_pred(151:300)];
clear Fehler_plot Fehler_pred
a=2
MaschineNr_pred = buffer(MaschineNr,150,149);
clear MaschineNr
Sektion_pred = buffer(Sektion,150,149);
clear Sektion
AlarmID_I_pred = buffer(AlarmID_I,150,149);
clear AlarmID_I
TextID_I_pred = buffer(TextID_I,150,149);
clear TextID_I
Text_I_pred = buffer(Text_I,150,149);
clear Text_I
Klasse_pred = buffer(Klasse,150,149);
clear Klasse
InProduktion_pred = buffer(InProduktion,150,149);
clear InProduktion
Gekuppelt_pred = buffer(Gekuppelt,150,149);
clear Gekuppelt
Ort_I_pred = buffer(Ort_I,150,149);
clear Ort_I
Kommentar_I_pred = buffer(Kommentar_I,150,149);
clear Kommentar_I
Confirmed_pred = buffer(Confirmed,150,149);
clear Confirmed
Istwert1_pred = buffer(Istwert1,150,149);
clear Istwert1
Istwert2_pred = buffer(Istwert2,150,149);
clear Istwert2
Istwert3_pred = buffer(Istwert3,150,149);
clear Istwert3
Istwert4_pred = buffer(Istwert4,150,149);
clear Istwert4
BetrKennzeichen_I_pred = buffer(BetrKennzeichen_I,150,149);
clear BetrKennzeichen_I
Zusatzinfo1_pred = buffer(Zusatzinfo1,150,149);
clear Zusatzinfo1
Zusatzinfo2_pred = buffer(Zusatzinfo2,150,149);
clear Zusatzinfo2
Zusatzinfo3_pred = buffer(Zusatzinfo3,150,149);
clear Zusatzinfo3
Zusatzinfo4_pred = buffer(Zusatzinfo4,150,149);
clear Zusatzinfo4
Zusatzinfo5_pred = buffer(Zusatzinfo5,150,149);
clear Zusatzinfo5
Zusatzinfo6_pred = buffer(Zusatzinfo6,150,149);
clear Zusatzinfo6
Zusatzinfo7_pred = buffer(Zusatzinfo7,150,149);
clear Zusatzinfo7
Zusatzinfo8_pred = buffer(Zusatzinfo8,150,149);
clear Zusatzinfo8

a=3

CL_ML_Prediction_data_table_150_Overlapping = table(Fehler_I_pred(151:end),MaschineNr_pred(:,151:end)',Sektion_pred(:,151:end)',AlarmID_I_pred(:,151:end)',TextID_I_pred(:,151:end)',Text_I_pred(:,151:end)',Klasse_pred(:,151:end)',InProduktion_pred(:,151:end)',Gekuppelt_pred(:,151:end)',Ort_I_pred(:,151:end)',Kommentar_I_pred(:,151:end)',Confirmed_pred(:,151:end)',Istwert1_pred(:,151:end)',Istwert2_pred(:,151:end)',Istwert3_pred(:,151:end)',Istwert4_pred(:,151:end)',BetrKennzeichen_I_pred(:,151:end)',Zusatzinfo1_pred(:,151:end)',Zusatzinfo2_pred(:,151:end)',Zusatzinfo3_pred(:,151:end)',Zusatzinfo4_pred(:,151:end)',Zusatzinfo5_pred(:,151:end)',Zusatzinfo6_pred(:,151:end)',Zusatzinfo7_pred(:,151:end)',Zusatzinfo8_pred(:,151:end)');

a=4

