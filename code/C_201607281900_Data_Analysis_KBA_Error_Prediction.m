load('201607281800_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_data_150_Overlapping.mat')

a=1

CL_ML_Prediction_data_table_150_Overlapping = table(Fehler_I_pred(151:end),MaschineNr_pred(:,151:end)',Sektion_pred(:,151:end)',AlarmID_I_pred(:,151:end)',TextID_I_pred(:,151:end)',Text_I_pred(:,151:end)',Klasse_pred(:,151:end)',InProduktion_pred(:,151:end)',Gekuppelt_pred(:,151:end)',Ort_I_pred(:,151:end)',Kommentar_I_pred(:,151:end)',Confirmed_pred(:,151:end)',Istwert1_pred(:,151:end)',Istwert2_pred(:,151:end)',Istwert3_pred(:,151:end)',Istwert4_pred(:,151:end)',BetrKennzeichen_I_pred(:,151:end)',Zusatzinfo1_pred(:,151:end)',Zusatzinfo2_pred(:,151:end)',Zusatzinfo3_pred(:,151:end)',Zusatzinfo4_pred(:,151:end)',Zusatzinfo5_pred(:,151:end)',Zusatzinfo6_pred(:,151:end)',Zusatzinfo7_pred(:,151:end)',Zusatzinfo8_pred(:,151:end)');

a=2

clearvars -except CL_ML_Prediction_data_table_150_Overlapping

save('201607281800_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_data_table_150_Overlapping.mat','-v7.3')

a=3