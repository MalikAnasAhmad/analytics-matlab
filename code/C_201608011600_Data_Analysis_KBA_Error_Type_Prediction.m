% load('201607281800_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_data_table_150_Overlapping.mat');

% % count=0;
% % 
% % Fehler_type = Text_I.*Fehler_plot;
% % Fehler_type_U = unique(Fehler_type); 
% % Fehler_type_U(1)=[];
% % 
% % for i=1:1:length(Fehler_type_U)%100
% %     for j=1:1:length(Fehler_type)%14125
% %         if(Fehler_type(j)==Fehler_type_U(i))
% %               Fehler_type_I(j) = i;
% %             count = count+1
% %         end
% %     end
% % end

Fehler_type_pred = buffer(Fehler_type_I,150,149);
[r,c] = find(Fehler_type_pred);

% dc = diff(c);

% NonZero_C = [c(find(dc))' c(end)];
% NonZero_R = [r(find(dc))' r(end)];

NonZero_C = [c(find(diff(c)))' c(end)];
NonZero_R = [r(find(diff(c)))' r(end)];

element_Size = 0:size(Fehler_type_pred,1):(size(Fehler_type_pred,1)*(size(Fehler_type_pred,2)-1));

Fehler_type_I_pred = zeros(1,size(Fehler_type_pred,2));
Fehler_type_I_pred(NonZero_C) = Fehler_type_pred((NonZero_R) + element_Size(NonZero_C));
% Fehler_type_I_pred = Fehler_type_pred(r(find([diff(c)' 1])),c(find([diff(c)' 1])));

% R_temp = r(find([diff(c)' 1]));
% C_temp = c(find([diff(c)' 1]));