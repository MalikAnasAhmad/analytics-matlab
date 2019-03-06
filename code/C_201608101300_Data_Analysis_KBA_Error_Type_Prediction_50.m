% load('Albrecht Szeitszam - 60905500_M_2015_Mapped.mat')
% 201608032000_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_50_Overlapping_Number_Prediction

count=0;

Fehler_type = Text_I.*Fehler_plot;
Fehler_type_U = unique(Fehler_type); 
Fehler_type_U(1)=[];

Fehler_type_I = zeros(size(Fehler_type));

for i=1:1:length(Fehler_type_U)%100
    for j=1:1:length(Fehler_type)%14125
        if(Fehler_type(j)==Fehler_type_U(i))
              Fehler_type_I(j) = i;
            count = count+1
        end
    end
end

window_Size = 50;

Fehler_type_pred = buffer(Fehler_type_I,window_Size,window_Size-1);
[r,c] = find(Fehler_type_pred);

NonZero_C = [c(find(diff(c)))' c(end)];
NonZero_R = [r(find(diff(c)))' r(end)];

element_Size = 0:size(Fehler_type_pred,1):(size(Fehler_type_pred,1)*(size(Fehler_type_pred,2)-1));

Fehler_type_I_pred = zeros(1,size(Fehler_type_pred,2));
Fehler_type_I_pred(NonZero_C) = Fehler_type_pred((NonZero_R) + element_Size(NonZero_C));

CL_ML_Prediction_data_table_50_Overlapping.Var1 = Fehler_type_I_pred(51:end)'

CL_ML_Prediction_data_table_50_Overlapping_type = CL_ML_Prediction_data_table_50_Overlapping;

save('201608032000_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_50_Overlapping_Number_Prediction.mat','CL_ML_Prediction_data_table_50_Overlapping_type','-v7.3')