load('Albrecht Szeitszam - 60905500_M_2015_Mapped.mat')
% 
% Fehler_pred = reshape(Fehler_plot(2:end),55819,22);
% Fehler_I_pred = sum(Fehler_pred')';
% Fehler_I_pred = [0;Fehler_I_pred];
% Fehler_I_pred = Fehler_I_pred(1:end-1);
% 
% MaschineNr_pred = reshape(MaschineNr(2:end),55819,22); 
% Sektion_pred = reshape(Sektion(2:end),55819,22);
% AlarmID_I_pred = reshape(AlarmID_I(2:end),55819,22);
% TextID_I_pred = reshape(TextID_I(2:end),55819,22);
% Klasse_pred = reshape(Klasse(2:end),55819,22);
% InProduktion_pred = reshape(InProduktion(2:end),55819,22);
% Gekuppelt_pred = reshape(Gekuppelt(2:end),55819,22);
% Ort_I_pred = reshape(Ort_I(2:end),55819,22);
% Kommentar_I_pred = reshape(Kommentar_I(2:end),55819,22);
% Confirmed_pred = reshape(Confirmed(2:end),55819,22);
% Istwert1_pred = reshape(Istwert1(2:end),55819,22);
% Istwert2_pred = reshape(Istwert2(2:end),55819,22);
% Istwert3_pred = reshape(Istwert3(2:end),55819,22);
% Istwert4_pred = reshape(Istwert4(2:end),55819,22);
% BetrKennzeichen_I_pred = reshape(BetrKennzeichen_I(2:end),55819,22);
% Zusatzinfo1_pred = reshape(Zusatzinfo1(2:end),55819,22);
% Zusatzinfo2_pred = reshape(Zusatzinfo2(2:end),55819,22);
% Zusatzinfo3_pred = reshape(Zusatzinfo3(2:end),55819,22);
% Zusatzinfo4_pred = reshape(Zusatzinfo4(2:end),55819,22);
% Zusatzinfo5_pred = reshape(Zusatzinfo5(2:end),55819,22);
% Zusatzinfo6_pred = reshape(Zusatzinfo6(2:end),55819,22);
% Zusatzinfo7_pred = reshape(Zusatzinfo7(2:end),55819,22);
% Zusatzinfo8_pred = reshape(Zusatzinfo8(2:end),55819,22);

%%150 x 8187 (excluding first 31) 

Fehler_pred = reshape(Fehler_plot(120:end),8186,150);
Fehler_I_pred = sum(Fehler_pred')';
Fehler_I_pred = [0;Fehler_I_pred];
Fehler_I_pred = Fehler_I_pred(1:end-1);

MaschineNr_pred = reshape(MaschineNr(120:end),8186,150);
Sektion_pred = reshape(Sektion(120:end),8186,150);
AlarmID_I_pred = reshape(AlarmID_I(120:end),8186,150);
TextID_I_pred = reshape(TextID_I(120:end),8186,150);
Klasse_pred = reshape(Klasse(120:end),8186,150);
InProduktion_pred = reshape(InProduktion(120:end),8186,150);
Gekuppelt_pred = reshape(Gekuppelt(120:end),8186,150);
Ort_I_pred = reshape(Ort_I(120:end),8186,150);
Kommentar_I_pred = reshape(Kommentar_I(120:end),8186,150);
Confirmed_pred = reshape(Confirmed(120:end),8186,150);
Istwert1_pred = reshape(Istwert1(120:end),8186,150);
Istwert2_pred = reshape(Istwert2(120:end),8186,150);
Istwert3_pred = reshape(Istwert3(120:end),8186,150);
Istwert4_pred = reshape(Istwert4(120:end),8186,150);
BetrKennzeichen_I_pred = reshape(BetrKennzeichen_I(120:end),8186,150);
Zusatzinfo1_pred = reshape(Zusatzinfo1(120:end),8186,150);
Zusatzinfo2_pred = reshape(Zusatzinfo2(120:end),8186,150);
Zusatzinfo3_pred = reshape(Zusatzinfo3(120:end),8186,150);
Zusatzinfo4_pred = reshape(Zusatzinfo4(120:end),8186,150);
Zusatzinfo5_pred = reshape(Zusatzinfo5(120:end),8186,150);
Zusatzinfo6_pred = reshape(Zusatzinfo6(120:end),8186,150);
Zusatzinfo7_pred = reshape(Zusatzinfo7(120:end),8186,150);
Zusatzinfo8_pred = reshape(Zusatzinfo8(120:end),8186,150);
CL_ML_Prediction_data_table_150_8187 = table(Fehler_I_pred,MaschineNr_pred,Sektion_pred,AlarmID_I_pred,TextID_I_pred,Klasse_pred,InProduktion_pred,Gekuppelt_pred,Ort_I_pred,Kommentar_I_pred,Confirmed_pred,Istwert1_pred,Istwert2_pred,Istwert3_pred,Istwert4_pred,BetrKennzeichen_I_pred,Zusatzinfo1_pred,Zusatzinfo2_pred,Zusatzinfo3_pred,Zusatzinfo4_pred,Zusatzinfo5_pred,Zusatzinfo6_pred,Zusatzinfo7_pred,Zusatzinfo8_pred);
save('201607261600_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_data_table_150_8187.mat')