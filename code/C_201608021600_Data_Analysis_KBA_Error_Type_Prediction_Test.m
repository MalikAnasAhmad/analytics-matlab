% % F=[4 0 3 0 0 1 2 0;8 7 0 1 0 7 8 0;0 4 0 0 0 0 5 0;0 0 0 1 0 0 2 0];
% % [r,c] = find(F);
% % dc = diff(c);
% % NonZero_C = [c(find(dc))' c(end)];
% % NonZero_R = [r(find(dc))' r(end)];
% % 
% % element_Size = 0:size(F,1):(size(F,1)*(size(F,2)-1));
% % 
% % labels = zeros(1,size(F,2));
% % labels(NonZero_C) = F((NonZero_R) + element_Size(NonZero_C))
% 
% % win_Start = 1;
% % % win_End = 3633;
% % 
% % % win_Start = 3634;
% % win_End = 12278;
% 
% % labels = predict(trainedClassifier_ComplexTree_122786_Overlap,[MaschineNr_pred(:,win_Start:win_End)',Sektion_pred(:,win_Start:win_End)',AlarmID_I_pred(:,win_Start:win_End)',TextID_I_pred(:,win_Start:win_End)',Text_I_pred(:,win_Start:win_End)',Klasse_pred(:,win_Start:win_End)',InProduktion_pred(:,win_Start:win_End)',Gekuppelt_pred(:,win_Start:win_End)',Ort_I_pred(:,win_Start:win_End)',Kommentar_I_pred(:,win_Start:win_End)',Confirmed_pred(:,win_Start:win_End)',Istwert1_pred(:,win_Start:win_End)',Istwert2_pred(:,win_Start:win_End)',Istwert3_pred(:,win_Start:win_End)',Istwert4_pred(:,win_Start:win_End)',BetrKennzeichen_I_pred(:,win_Start:win_End)',Zusatzinfo1_pred(:,win_Start:win_End)',Zusatzinfo2_pred(:,win_Start:win_End)',Zusatzinfo3_pred(:,win_Start:win_End)',Zusatzinfo4_pred(:,win_Start:win_End)',Zusatzinfo5_pred(:,win_Start:win_End)',Zusatzinfo6_pred(:,win_Start:win_End)',Zusatzinfo7_pred(:,win_Start:win_End)',Zusatzinfo8_pred(:,win_Start:win_End)']);
% % 
% % RMSE = sqrt(sum((labels - Fehler_I_pred(win_Start:win_End)).^2)/length(labels))
% % 
% % accuracy = length(find((labels-Fehler_I_pred(win_Start:win_End))~=0))/length(labels)*100
% a=5;
% win_Start = 1 + 122786*a;
% win_End = 122786 + 122786*a;
% 
% labels = predict(trainedClassifier,table2array(CL_ML_Prediction_data_table_150_Overlapping((win_Start:win_End),[4 5 6 10 13 14 15 16 17 18 19 20 21 22 23 24 25])));
% 
% RMSE = sqrt(sum((labels - CL_ML_Prediction_data_table_150_Overlapping.Var1(win_Start:win_End)).^2)/length(labels))
% 
% accuracy = length(find((labels-CL_ML_Prediction_data_table_150_Overlapping.Var1(win_Start:win_End))~=0))/length(labels)*100

% ((((numel(find(E_2_History(:,6,:)==1))/numel(E_2_History(:,6,:)))*100) + ((numel(find(E_2_History(:,6,:)==2))/numel(E_2_History(:,6,:)))*100))*numel(E_2_Location)...
%     + (((numel(find(E_8_History(:,6,:)==1))/numel(E_8_History(:,6,:)))*100) + ((numel(find(E_8_History(:,6,:)==2))/numel(E_8_History(:,6,:)))*100))*numel(E_8_Location)...
%     + (((numel(find(E_9_History(:,6,:)==1))/numel(E_9_History(:,6,:)))*100) + ((numel(find(E_9_History(:,6,:)==2))/numel(E_9_History(:,6,:)))*100))*numel(E_9_Location)...
%     + (((numel(find(E_41_History(:,6,:)==1))/numel(E_41_History(:,6,:)))*100) + ((numel(find(E_41_History(:,6,:)==2))/numel(E_41_History(:,6,:)))*100))*numel(E_41_Location)...
%     + (((numel(find(E_99_History(:,6,:)==1))/numel(E_99_History(:,6,:)))*100) + ((numel(find(E_99_History(:,6,:)==2))/numel(E_99_History(:,6,:)))*100))*numel(E_99_Location)...
%     + (((numel(find(E_10_History(:,6,:)==1))/numel(E_10_History(:,6,:)))*100) + ((numel(find(E_10_History(:,6,:)==2))/numel(E_10_History(:,6,:)))*100))*numel(E_10_Location))/...
%     (numel(E_2_Location) + numel(E_8_Location) + numel(E_9_Location) + numel(E_41_Location) + numel(E_99_Location) + numel(E_10_Location))

(((((numel(find(E_2_History(:,6,:)==3))/numel(E_2_History(:,6,:)))*100)) * numel(E_2_Location))...
    + (((numel(find(E_8_History(:,6,:)==3))/numel(E_8_History(:,6,:)))*100) * numel(E_8_Location))...
    + (((numel(find(E_9_History(:,6,:)==3))/numel(E_9_History(:,6,:)))*100) * numel(E_9_Location))...
    + (((numel(find(E_41_History(:,6,:)==3))/numel(E_41_History(:,6,:)))*100) * numel(E_41_Location))...
    + (((numel(find(E_99_History(:,6,:)==3))/numel(E_99_History(:,6,:)))*100) * numel(E_99_Location))...
    + (((numel(find(E_10_History(:,6,:)==3))/numel(E_10_History(:,6,:)))*100) * numel(E_10_Location)))/...
    (numel(E_2_Location) + numel(E_8_Location) + numel(E_9_Location) + numel(E_41_Location) + numel(E_99_Location) + numel(E_10_Location))