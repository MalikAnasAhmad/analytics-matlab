% load('201607281800_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_data_table_150_Overlapping.mat');
load('201607281800_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_150_Overlapping_4_Type_Prediction.mat');

Fehler_type_pred = buffer(Fehler_type_I,150,149);
[r,c] = find(Fehler_type_pred);

NonZero_C = [c(find(diff(c)))' c(end)];
NonZero_R = [r(find(diff(c)))' r(end)];

element_Size = 0:size(Fehler_type_pred,1):(size(Fehler_type_pred,1)*(size(Fehler_type_pred,2)-1));

Fehler_type_I_pred = zeros(1,size(Fehler_type_pred,2));
Fehler_type_I_pred(NonZero_C) = Fehler_type_pred((NonZero_R) + element_Size(NonZero_C));

CL_ML_Prediction_data_table_150_Overlapping.Var1 = Fehler_type_I_pred(151:end)';

CL_ML_Prediction_data_table_150_18_Overlapping_122786 = CL_ML_Prediction_data_table_150_Overlapping_122786(:,[1 4 5 6 10 13 14 15 16 17 18 19 20 21 22 23 24 25]);