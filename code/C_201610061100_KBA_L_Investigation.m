% % load('201608101500_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_50_Overlapping_Number_Prediction_type.mat')
% % load('Albrecht Szeitszam - 60905500_M_2015.mat')
month_location = [0 718023 1377796 2220226 3024578 3816061 4663212 5398407 6078772 6984401 7875274 8749625 957689];

% for i=1:numel(EreignisStaempel)
%     if(~isempty(cell2mat(strfind(cellstr(EreignisStaempel(i)),'01.11'))))
%         i-1
%         break
%     end
% end

% for i=1:12
% %     figure(i)
%     [N(i,:),E(i,:)] = histcounts(Ereignisid_I(month_location(i)+1:month_location(i+1)),min(Ereignisid_I):max(Ereignisid_I)+1);
% %     bar([min(Ereignisid_I):max(Ereignisid_I)],N(i,:))
% end
% Ereignisid_I_diff = diff(N);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(Ereignisid_I_diff(1,:)>0),find(Ereignisid_I_diff(2,:)>0)),find(Ereignisid_I_diff(3,:)>0)),find(Ereignisid_I_diff(4,:)>0)),find(Ereignisid_I_diff(5,:)>0)),find(Ereignisid_I_diff(6,:)>0)),find(Ereignisid_I_diff(7,:)>0)),find(Ereignisid_I_diff(8,:)>0)),find(Ereignisid_I_diff(9,:)>0)),find(Ereignisid_I_diff(10,:)>0)),find(Ereignisid_I_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(Ereignisid_I_diff(1,:)>0),find(Ereignisid_I_diff(2,:)>0)),find(Ereignisid_I_diff(3,:)>0)),find(Ereignisid_I_diff(4,:)>0)),find(Ereignisid_I_diff(5,:)>0)),find(Ereignisid_I_diff(6,:)>0)),find(Ereignisid_I_diff(7,:)>0));
% find(sum(Ereignisid_I_diff(1:6,:)>0)>4)
% Ereignisid_U(find(sum(Ereignisid_I_diff(1:6,:)>0)>4))
% (N(7,find(sum(Ereignisid_I_diff(1:6,:)>0)>4))) - (N(1,find(sum(Ereignisid_I_diff(1:6,:)>0)>4)))%biggest change
% ((N(1,find(sum(Ereignisid_I_diff(1:6,:)>0)>4)))./sum(N(1,:)))*100 %percentage ratio of the Ereignisid with rest for first month Jan
% ((N(7,find(sum(Ereignisid_I_diff(1:6,:)>0)>4)))./sum(N(7,:)))*100 %percentage ratio of the Ereignisid with rest for seventh month Jul
% 
% ((N(7,find(sum(Ereignisid_I_diff(1:6,:)>0)>4)))./sum(N(7,:)))*100 -((N(1,find(sum(Ereignisid_I_diff(1:6,:)>0)>4)))./sum(N(1,:)))*100 %difference of percentage occurance or change in PDF

% for i=1:12
% %     figure(i)
%     [N_Objektpfad(i,:),E_Objektpfad(i,:)] = histcounts(Objektpfad_I(month_location(i)+1:month_location(i+1)),min(Objektpfad_I):max(Objektpfad_I)+1);
% %     bar([min(Objektpfad_I):max(Objektpfad_I)],N_Objektpfad(i,:))
% end
% Objektpfad_I_diff = diff(N_Objektpfad);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(Objektpfad_I_diff(1,:)>0),find(Objektpfad_I_diff(2,:)>0)),find(Objektpfad_I_diff(3,:)>0)),find(Objektpfad_I_diff(4,:)>0)),find(Objektpfad_I_diff(5,:)>0)),find(Objektpfad_I_diff(6,:)>0)),find(Objektpfad_I_diff(7,:)>0)),find(Objektpfad_I_diff(8,:)>0)),find(Objektpfad_I_diff(9,:)>0)),find(Objektpfad_I_diff(10,:)>0)),find(Objektpfad_I_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(Objektpfad_I_diff(1,:)>0),find(Objektpfad_I_diff(2,:)>0)),find(Objektpfad_I_diff(3,:)>0)),find(Objektpfad_I_diff(4,:)>0)),find(Objektpfad_I_diff(5,:)>0)),find(Objektpfad_I_diff(6,:)>0)),find(Objektpfad_I_diff(7,:)>0));
% 
% display('Position of positiively increasing codes from Jan to Jul')
% find(sum(Objektpfad_I_diff(1:6,:)>0)>4)
% 
% display('positiively increasing codes from Jan to Jul')
% Objektpfad_U(find(sum(Objektpfad_I_diff(1:6,:)>0)>4))
% 
% display('change in # of occuranace from July to Jun')
% (N_Objektpfad(7,find(sum(Objektpfad_I_diff(1:6,:)>0)>4))) - (N_Objektpfad(1,find(sum(Objektpfad_I_diff(1:6,:)>0)>4)))%biggest change
% 
% display('PDF percentage for Jan')
% ((N_Objektpfad(1,find(sum(Objektpfad_I_diff(1:6,:)>0)>4)))./sum(N_Objektpfad(1,:)))*100 %percentage ratio of the Objektpfad with rest for first month Jan
% 
% display('PDF percentage for July')
% ((N_Objektpfad(7,find(sum(Objektpfad_I_diff(1:6,:)>0)>4)))./sum(N_Objektpfad(7,:)))*100 %percentage ratio of the Objektpfad with rest for seventh month Jul
% 
% display('Difference in PDF percentage')
% 
% ((N_Objektpfad(7,find(sum(Objektpfad_I_diff(1:6,:)>0)>4)))./sum(N_Objektpfad(7,:)))*100 -((N_Objektpfad(1,find(sum(Objektpfad_I_diff(1:6,:)>0)>4)))./sum(N_Objektpfad(1,:)))*100 %difference of percentage occurance or change in PDF

% for i=1:12
% %     figure(i)
%     [N_Tagname_I(i,:),E_Tagname_I(i,:)] = histcounts(Tagname_I(month_location(i)+1:month_location(i+1)),min(Tagname_I):max(Tagname_I)+1);
% %     bar([min(Tagname_I):max(Tagname_I)],N_Tagname_I(i,:))
% end
% Tagname_I_diff = diff(N_Tagname_I);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(Tagname_I_diff(1,:)>0),find(Tagname_I_diff(2,:)>0)),find(Tagname_I_diff(3,:)>0)),find(Tagname_I_diff(4,:)>0)),find(Tagname_I_diff(5,:)>0)),find(Tagname_I_diff(6,:)>0)),find(Tagname_I_diff(7,:)>0)),find(Tagname_I_diff(8,:)>0)),find(Tagname_I_diff(9,:)>0)),find(Tagname_I_diff(10,:)>0)),find(Tagname_I_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(Tagname_I_diff(1,:)>0),find(Tagname_I_diff(2,:)>0)),find(Tagname_I_diff(3,:)>0)),find(Tagname_I_diff(4,:)>0)),find(Tagname_I_diff(5,:)>0)),find(Tagname_I_diff(6,:)>0)),find(Tagname_I_diff(7,:)>0));
% 
% display('Position of positiively increasing codes from Jan to Jul')
% find(sum(Tagname_I_diff(1:6,:)>0)>4)
% 
% display('positiively increasing codes from Jan to Jul')
% Tagname_U(find(sum(Tagname_I_diff(1:6,:)>0)>4))
% 
% display('change in # of occuranace from July to Jun')
% (N_Tagname_I(7,find(sum(Tagname_I_diff(1:6,:)>0)>4))) - (N_Tagname_I(1,find(sum(Tagname_I_diff(1:6,:)>0)>4)))%biggest change
% 
% display('PDF percentage for Jan')
% ((N_Tagname_I(1,find(sum(Tagname_I_diff(1:6,:)>0)>4)))./sum(N_Tagname_I(1,:)))*100 %percentage ratio of the Tagname_I with rest for first month Jan
% 
% display('PDF percentage for July')
% ((N_Tagname_I(7,find(sum(Tagname_I_diff(1:6,:)>0)>4)))./sum(N_Tagname_I(7,:)))*100 %percentage ratio of the Tagname_I with rest for seventh month Jul
% 
% display('Difference in PDF percentage')
% 
% ((N_Tagname_I(7,find(sum(Tagname_I_diff(1:6,:)>0)>4)))./sum(N_Tagname_I(7,:)))*100 -((N_Tagname_I(1,find(sum(Tagname_I_diff(1:6,:)>0)>4)))./sum(N_Tagname_I(1,:)))*100 %difference of percentage occurance or change in PDF

for i=1:12
    figure(i)
    [N_Ort(i,:),E_Ort(i,:)] = histcounts(Ort_I(month_location(i)+1:month_location(i+1)),min(Ort_I):max(Ort_I)+1);
    bar([min(Ort_I):max(Ort_I)],N_Ort(i,:))
end
Ort_I_diff = diff(N_Ort);

% intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(Ort_I_diff(1,:)>0),find(Ort_I_diff(2,:)>0)),find(Ort_I_diff(3,:)>0)),find(Ort_I_diff(4,:)>0)),find(Ort_I_diff(5,:)>0)),find(Ort_I_diff(6,:)>0)),find(Ort_I_diff(7,:)>0)),find(Ort_I_diff(8,:)>0)),find(Ort_I_diff(9,:)>0)),find(Ort_I_diff(10,:)>0)),find(Ort_I_diff(11,:)>0))
intersect(intersect(intersect(intersect(intersect(intersect(find(Ort_I_diff(1,:)>0),find(Ort_I_diff(2,:)>0)),find(Ort_I_diff(3,:)>0)),find(Ort_I_diff(4,:)>0)),find(Ort_I_diff(5,:)>0)),find(Ort_I_diff(6,:)>0)),find(Ort_I_diff(7,:)>0));

display('Position of positiively increasing codes from Jan to Jul')
find(sum(Ort_I_diff(1:6,:)>0)>4)

display('positiively increasing codes from Jan to Jul')
Ort_U(find(sum(Ort_I_diff(1:6,:)>0)>4))

display('change in # of occuranace from July to Jun')
(N_Ort(7,find(sum(Ort_I_diff(1:6,:)>0)>4))) - (N_Ort(1,find(sum(Ort_I_diff(1:6,:)>0)>4)))%biggest change

display('PDF percentage for Jan')
((N_Ort(1,find(sum(Ort_I_diff(1:6,:)>0)>4)))./sum(N_Ort(1,:)))*100 %percentage ratio of the Ort with rest for first month Jan

display('PDF percentage for July')
((N_Ort(7,find(sum(Ort_I_diff(1:6,:)>0)>4)))./sum(N_Ort(7,:)))*100 %percentage ratio of the Ort with rest for seventh month Jul

display('Difference in PDF percentage')

((N_Ort(7,find(sum(Ort_I_diff(1:6,:)>0)>4)))./sum(N_Ort(7,:)))*100 -((N_Ort(1,find(sum(Ort_I_diff(1:6,:)>0)>4)))./sum(N_Ort(1,:)))*100 %difference of percentage occurance or change in PDF

% % for i=1:12
% %     figure(i)
% %     [N_TextID(i,:),E_TextID(i,:)] = histcounts(TextID_I(month_location(i)+1:month_location(i+1)),min(TextID_I):max(TextID_I)+1);
% %     bar([min(TextID_I):max(TextID_I)],N_TextID(i,:))
% % end
% % TextID_I_diff = diff(N_TextID);
% % 
% % % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(TextID_I_diff(1,:)>0),find(TextID_I_diff(2,:)>0)),find(TextID_I_diff(3,:)>0)),find(TextID_I_diff(4,:)>0)),find(TextID_I_diff(5,:)>0)),find(TextID_I_diff(6,:)>0)),find(TextID_I_diff(7,:)>0)),find(TextID_I_diff(8,:)>0)),find(TextID_I_diff(9,:)>0)),find(TextID_I_diff(10,:)>0)),find(TextID_I_diff(11,:)>0))
% % intersect(intersect(intersect(intersect(intersect(intersect(find(TextID_I_diff(1,:)>0),find(TextID_I_diff(2,:)>0)),find(TextID_I_diff(3,:)>0)),find(TextID_I_diff(4,:)>0)),find(TextID_I_diff(5,:)>0)),find(TextID_I_diff(6,:)>0)),find(TextID_I_diff(7,:)>0));
% % 
% % display('Position of positiively increasing codes from Jan to Jul')
% % find(sum(TextID_I_diff(1:6,:)>0)>4)
% % 
% % display('positiively increasing codes from Jan to Jul')
% % TextID_U(find(sum(TextID_I_diff(1:6,:)>0)>4))
% % 
% % display('change in # of occuranace from July to Jun')
% % (N_TextID(7,find(sum(TextID_I_diff(1:6,:)>0)>4))) - (N_TextID(1,find(sum(TextID_I_diff(1:6,:)>0)>4)))%biggest change
% % 
% % display('PDF percentage for Jan')
% % ((N_TextID(1,find(sum(TextID_I_diff(1:6,:)>0)>4)))./sum(N_TextID(1,:)))*100 %percentage ratio of the TextID with rest for first month Jan
% % 
% % display('PDF percentage for July')
% % ((N_TextID(7,find(sum(TextID_I_diff(1:6,:)>0)>4)))./sum(N_TextID(7,:)))*100 %percentage ratio of the TextID with rest for seventh month Jul
% % 
% % display('Difference in PDF percentage')
% % 
% % ((N_TextID(7,find(sum(TextID_I_diff(1:6,:)>0)>4)))./sum(N_TextID(7,:)))*100 -((N_TextID(1,find(sum(TextID_I_diff(1:6,:)>0)>4)))./sum(N_TextID(1,:)))*100 %difference of percentage occurance or change in PDF
% % 
% % for i=1:12
% %     figure(i)
% %     [N_Text(i,:),E_Text(i,:)] = histcounts(Text_I(month_location(i)+1:month_location(i+1)),min(Text_I):max(Text_I)+1);
% %     bar([min(Text_I):max(Text_I)],N_Text(i,:))
% % end
% % Text_I_diff = diff(N_Text);
% % 
% % % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(Text_I_diff(1,:)>0),find(Text_I_diff(2,:)>0)),find(Text_I_diff(3,:)>0)),find(Text_I_diff(4,:)>0)),find(Text_I_diff(5,:)>0)),find(Text_I_diff(6,:)>0)),find(Text_I_diff(7,:)>0)),find(Text_I_diff(8,:)>0)),find(Text_I_diff(9,:)>0)),find(Text_I_diff(10,:)>0)),find(Text_I_diff(11,:)>0))
% % intersect(intersect(intersect(intersect(intersect(intersect(find(Text_I_diff(1,:)>0),find(Text_I_diff(2,:)>0)),find(Text_I_diff(3,:)>0)),find(Text_I_diff(4,:)>0)),find(Text_I_diff(5,:)>0)),find(Text_I_diff(6,:)>0)),find(Text_I_diff(7,:)>0));
% % 
% % display('Position of positiively increasing codes from Jan to Jul')
% % find(sum(Text_I_diff(1:6,:)>0)>4)
% % 
% % display('positiively increasing codes from Jan to Jul')
% % Text_U(find(sum(Text_I_diff(1:6,:)>0)>4))
% % 
% % display('change in # of occuranace from July to Jun')
% % (N_Text(7,find(sum(Text_I_diff(1:6,:)>0)>4))) - (N_Text(1,find(sum(Text_I_diff(1:6,:)>0)>4)))%biggest change
% % 
% % display('PDF percentage for Jan')
% % ((N_Text(1,find(sum(Text_I_diff(1:6,:)>0)>4)))./sum(N_Text(1,:)))*100 %percentage ratio of the Text with rest for first month Jan
% % 
% % display('PDF percentage for July')
% % ((N_Text(7,find(sum(Text_I_diff(1:6,:)>0)>4)))./sum(N_Text(7,:)))*100 %percentage ratio of the Text with rest for seventh month Jul
% % 
% % display('Difference in PDF percentage')
% % 
% % ((N_Text(7,find(sum(Text_I_diff(1:6,:)>0)>4)))./sum(N_Text(7,:)))*100 -((N_Text(1,find(sum(Text_I_diff(1:6,:)>0)>4)))./sum(N_TextID(1,:)))*100 %difference of percentage occurance or change in PDF
% 
% AlarmID_U(find(sum(AlarmID_I_diff(1:6,:)>0)>4))
% (find(sum(AlarmID_I_diff(1:6,:)>0)>4))