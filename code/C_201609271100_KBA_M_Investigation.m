% % load('201608101500_Albrecht Szeitszam - 60905500_M_2015_CL_ML_Prediction_50_Overlapping_Number_Prediction_type.mat')
% % load('Albrecht Szeitszam - 60905500_M_2015.mat')
month_location = [0 76676 153057 263377 363427 455764 557339 647775 725035 847307 998449 1122030 1228019];

% for i=1:numel(Gekommen)
%     if(~isempty(cell2mat(strfind(cellstr(Gekommen(i)),'01.12'))))
%         i-1
%         break
%     end
% end

for i=1:12
%     figure(i)
    [N(i,:),E(i,:)] = histcounts(AlarmID_I(month_location(i)+1:month_location(i+1)),min(AlarmID_I):max(AlarmID_I)+1);
%     bar([min(AlarmID_I):max(AlarmID_I)],N(i,:))
end
% AlarmID_I_diff = diff(N);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(AlarmID_I_diff(1,:)>0),find(AlarmID_I_diff(2,:)>0)),find(AlarmID_I_diff(3,:)>0)),find(AlarmID_I_diff(4,:)>0)),find(AlarmID_I_diff(5,:)>0)),find(AlarmID_I_diff(6,:)>0)),find(AlarmID_I_diff(7,:)>0)),find(AlarmID_I_diff(8,:)>0)),find(AlarmID_I_diff(9,:)>0)),find(AlarmID_I_diff(10,:)>0)),find(AlarmID_I_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(AlarmID_I_diff(1,:)>0),find(AlarmID_I_diff(2,:)>0)),find(AlarmID_I_diff(3,:)>0)),find(AlarmID_I_diff(4,:)>0)),find(AlarmID_I_diff(5,:)>0)),find(AlarmID_I_diff(6,:)>0)),find(AlarmID_I_diff(7,:)>0));
% find(sum(AlarmID_I_diff(1:6,:)>0)>4)
% AlarmID_U(find(sum(AlarmID_I_diff(1:6,:)>0)>4))
% (N(7,find(sum(AlarmID_I_diff(1:6,:)>0)>4))) - (N(1,find(sum(AlarmID_I_diff(1:6,:)>0)>4)))%biggest change
% ((N(1,find(sum(AlarmID_I_diff(1:6,:)>0)>4)))./sum(N(1,:)))*100 %percentage ratio of the alarmID with rest for first month Jan
% ((N(7,find(sum(AlarmID_I_diff(1:6,:)>0)>4)))./sum(N(7,:)))*100 %percentage ratio of the alarmID with rest for seventh month Jul

% ((N(7,find(sum(AlarmID_I_diff(1:6,:)>0)>4)))./sum(N(7,:)))*100 -((N(1,find(sum(AlarmID_I_diff(1:6,:)>0)>4)))./sum(N(1,:)))*100 %difference of percentage occurance or change in PDF

% for i=1:12
%     figure(i)
%     [N_BetrKennzeichen(i,:),E_BetrKennzeichen(i,:)] = histcounts(BetrKennzeichen_I(month_location(i)+1:month_location(i+1)),min(BetrKennzeichen_I):max(BetrKennzeichen_I)+1);
%     bar([min(BetrKennzeichen_I):max(BetrKennzeichen_I)],N_BetrKennzeichen(i,:))
% end
% BetrKennzeichen_I_diff = diff(N_BetrKennzeichen);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(BetrKennzeichen_I_diff(1,:)>0),find(BetrKennzeichen_I_diff(2,:)>0)),find(BetrKennzeichen_I_diff(3,:)>0)),find(BetrKennzeichen_I_diff(4,:)>0)),find(BetrKennzeichen_I_diff(5,:)>0)),find(BetrKennzeichen_I_diff(6,:)>0)),find(BetrKennzeichen_I_diff(7,:)>0)),find(BetrKennzeichen_I_diff(8,:)>0)),find(BetrKennzeichen_I_diff(9,:)>0)),find(BetrKennzeichen_I_diff(10,:)>0)),find(BetrKennzeichen_I_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(BetrKennzeichen_I_diff(1,:)>0),find(BetrKennzeichen_I_diff(2,:)>0)),find(BetrKennzeichen_I_diff(3,:)>0)),find(BetrKennzeichen_I_diff(4,:)>0)),find(BetrKennzeichen_I_diff(5,:)>0)),find(BetrKennzeichen_I_diff(6,:)>0)),find(BetrKennzeichen_I_diff(7,:)>0));
% 
% display('Position of positiively increasing codes from Jan to Jul')
% find(sum(BetrKennzeichen_I_diff(1:6,:)>0)>4)
% 
% display('positiively increasing codes from Jan to Jul')
% BetrKennzeichen_U(find(sum(BetrKennzeichen_I_diff(1:6,:)>0)>4))
% 
% display('change in # of occuranace from July to Jun')
% (N_BetrKennzeichen(7,find(sum(BetrKennzeichen_I_diff(1:6,:)>0)>4))) - (N_BetrKennzeichen(1,find(sum(BetrKennzeichen_I_diff(1:6,:)>0)>4)))%biggest change
% 
% display('PDF percentage for Jan')
% ((N_BetrKennzeichen(1,find(sum(BetrKennzeichen_I_diff(1:6,:)>0)>4)))./sum(N_BetrKennzeichen(1,:)))*100 %percentage ratio of the BetrKennzeichen with rest for first month Jan
% 
% display('PDF percentage for July')
% ((N_BetrKennzeichen(7,find(sum(BetrKennzeichen_I_diff(1:6,:)>0)>4)))./sum(N_BetrKennzeichen(7,:)))*100 %percentage ratio of the BetrKennzeichen with rest for seventh month Jul
% 
% display('Difference in PDF percentage')
% 
% ((N_BetrKennzeichen(7,find(sum(BetrKennzeichen_I_diff(1:6,:)>0)>4)))./sum(N_BetrKennzeichen(7,:)))*100 -((N_BetrKennzeichen(1,find(sum(BetrKennzeichen_I_diff(1:6,:)>0)>4)))./sum(N_BetrKennzeichen(1,:)))*100 %difference of percentage occurance or change in PDF
% 
% for i=1:12
%     figure(i)
%     [N_Klasse(i,:),E_Klasse(i,:)] = histcounts(Klasse(month_location(i)+1:month_location(i+1)),min(Klasse):max(Klasse)+1);
%     bar([min(Klasse):max(Klasse)],N_Klasse(i,:))
% end
% Klasse_diff = diff(N_Klasse);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(Klasse_diff(1,:)>0),find(Klasse_diff(2,:)>0)),find(Klasse_diff(3,:)>0)),find(Klasse_diff(4,:)>0)),find(Klasse_diff(5,:)>0)),find(Klasse_diff(6,:)>0)),find(Klasse_diff(7,:)>0)),find(Klasse_diff(8,:)>0)),find(Klasse_diff(9,:)>0)),find(Klasse_diff(10,:)>0)),find(Klasse_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(Klasse_diff(1,:)>0),find(Klasse_diff(2,:)>0)),find(Klasse_diff(3,:)>0)),find(Klasse_diff(4,:)>0)),find(Klasse_diff(5,:)>0)),find(Klasse_diff(6,:)>0)),find(Klasse_diff(7,:)>0));
% 
% display('Position of positiively increasing codes from Jan to Jul')
% find(sum(Klasse_diff(1:6,:)>0)>4)
% 
% display('positiively increasing codes from Jan to Jul')
% Klasse_U = unique(Klasse);
% Klasse_U(find(sum(Klasse_diff(1:6,:)>0)>4))
% 
% display('change in # of occuranace from July to Jun')
% (N_Klasse(7,find(sum(Klasse_diff(1:6,:)>0)>4))) - (N_Klasse(1,find(sum(Klasse_diff(1:6,:)>0)>4)))%biggest change
% 
% display('PDF percentage for Jan')
% ((N_Klasse(1,find(sum(Klasse_diff(1:6,:)>0)>4)))./sum(N_Klasse(1,:)))*100 %percentage ratio of the Klasse with rest for first month Jan
% 
% display('PDF percentage for July')
% ((N_Klasse(7,find(sum(Klasse_diff(1:6,:)>0)>4)))./sum(N_Klasse(7,:)))*100 %percentage ratio of the Klasse with rest for seventh month Jul
% 
% display('Difference in PDF percentage')
% 
% ((N_Klasse(7,find(sum(Klasse_diff(1:6,:)>0)>4)))./sum(N_Klasse(7,:)))*100 -((N_Klasse(1,find(sum(Klasse_diff(1:6,:)>0)>4)))./sum(N_Klasse(1,:)))*100 %difference of percentage occurance or change in PDF

% for i=1:12
%     figure(i)
%     [N_Ort(i,:),E_Ort(i,:)] = histcounts(Ort_I(month_location(i)+1:month_location(i+1)),min(Ort_I):max(Ort_I)+1);
%     bar([min(Ort_I):max(Ort_I)],N_Ort(i,:))
% end
% Ort_I_diff = diff(N_Ort);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(Ort_I_diff(1,:)>0),find(Ort_I_diff(2,:)>0)),find(Ort_I_diff(3,:)>0)),find(Ort_I_diff(4,:)>0)),find(Ort_I_diff(5,:)>0)),find(Ort_I_diff(6,:)>0)),find(Ort_I_diff(7,:)>0)),find(Ort_I_diff(8,:)>0)),find(Ort_I_diff(9,:)>0)),find(Ort_I_diff(10,:)>0)),find(Ort_I_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(Ort_I_diff(1,:)>0),find(Ort_I_diff(2,:)>0)),find(Ort_I_diff(3,:)>0)),find(Ort_I_diff(4,:)>0)),find(Ort_I_diff(5,:)>0)),find(Ort_I_diff(6,:)>0)),find(Ort_I_diff(7,:)>0));
% 
% display('Position of positiively increasing codes from Jan to Jul')
% find(sum(Ort_I_diff(1:6,:)>0)>4)
% 
% display('positiively increasing codes from Jan to Jul')
% Ort_U(find(sum(Ort_I_diff(1:6,:)>0)>4))
% 
% display('change in # of occuranace from July to Jun')
% (N_Ort(7,find(sum(Ort_I_diff(1:6,:)>0)>4))) - (N_Ort(1,find(sum(Ort_I_diff(1:6,:)>0)>4)))%biggest change
% 
% display('PDF percentage for Jan')
% ((N_Ort(1,find(sum(Ort_I_diff(1:6,:)>0)>4)))./sum(N_Ort(1,:)))*100 %percentage ratio of the Ort with rest for first month Jan
% 
% display('PDF percentage for July')
% ((N_Ort(7,find(sum(Ort_I_diff(1:6,:)>0)>4)))./sum(N_Ort(7,:)))*100 %percentage ratio of the Ort with rest for seventh month Jul
% 
% display('Difference in PDF percentage')
% 
% ((N_Ort(7,find(sum(Ort_I_diff(1:6,:)>0)>4)))./sum(N_Ort(7,:)))*100 -((N_Ort(1,find(sum(Ort_I_diff(1:6,:)>0)>4)))./sum(N_Ort(1,:)))*100 %difference of percentage occurance or change in PDF

% for i=1:12
%     figure(i)
%     [N_TextID(i,:),E_TextID(i,:)] = histcounts(TextID_I(month_location(i)+1:month_location(i+1)),min(TextID_I):max(TextID_I)+1);
%     bar([min(TextID_I):max(TextID_I)],N_TextID(i,:))
% end
% TextID_I_diff = diff(N_TextID);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(TextID_I_diff(1,:)>0),find(TextID_I_diff(2,:)>0)),find(TextID_I_diff(3,:)>0)),find(TextID_I_diff(4,:)>0)),find(TextID_I_diff(5,:)>0)),find(TextID_I_diff(6,:)>0)),find(TextID_I_diff(7,:)>0)),find(TextID_I_diff(8,:)>0)),find(TextID_I_diff(9,:)>0)),find(TextID_I_diff(10,:)>0)),find(TextID_I_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(TextID_I_diff(1,:)>0),find(TextID_I_diff(2,:)>0)),find(TextID_I_diff(3,:)>0)),find(TextID_I_diff(4,:)>0)),find(TextID_I_diff(5,:)>0)),find(TextID_I_diff(6,:)>0)),find(TextID_I_diff(7,:)>0));
% 
% display('Position of positiively increasing codes from Jan to Jul')
% find(sum(TextID_I_diff(1:6,:)>0)>4)
% 
% display('positiively increasing codes from Jan to Jul')
% TextID_U(find(sum(TextID_I_diff(1:6,:)>0)>4))
% 
% display('change in # of occuranace from July to Jun')
% (N_TextID(7,find(sum(TextID_I_diff(1:6,:)>0)>4))) - (N_TextID(1,find(sum(TextID_I_diff(1:6,:)>0)>4)))%biggest change
% 
% display('PDF percentage for Jan')
% ((N_TextID(1,find(sum(TextID_I_diff(1:6,:)>0)>4)))./sum(N_TextID(1,:)))*100 %percentage ratio of the TextID with rest for first month Jan
% 
% display('PDF percentage for July')
% ((N_TextID(7,find(sum(TextID_I_diff(1:6,:)>0)>4)))./sum(N_TextID(7,:)))*100 %percentage ratio of the TextID with rest for seventh month Jul
% 
% display('Difference in PDF percentage')
% 
% ((N_TextID(7,find(sum(TextID_I_diff(1:6,:)>0)>4)))./sum(N_TextID(7,:)))*100 -((N_TextID(1,find(sum(TextID_I_diff(1:6,:)>0)>4)))./sum(N_TextID(1,:)))*100 %difference of percentage occurance or change in PDF
% 
% for i=1:12
%     figure(i)
%     [N_Text(i,:),E_Text(i,:)] = histcounts(Text_I(month_location(i)+1:month_location(i+1)),min(Text_I):max(Text_I)+1);
%     bar([min(Text_I):max(Text_I)],N_Text(i,:))
% end
% Text_I_diff = diff(N_Text);
% 
% % intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(intersect(find(Text_I_diff(1,:)>0),find(Text_I_diff(2,:)>0)),find(Text_I_diff(3,:)>0)),find(Text_I_diff(4,:)>0)),find(Text_I_diff(5,:)>0)),find(Text_I_diff(6,:)>0)),find(Text_I_diff(7,:)>0)),find(Text_I_diff(8,:)>0)),find(Text_I_diff(9,:)>0)),find(Text_I_diff(10,:)>0)),find(Text_I_diff(11,:)>0))
% intersect(intersect(intersect(intersect(intersect(intersect(find(Text_I_diff(1,:)>0),find(Text_I_diff(2,:)>0)),find(Text_I_diff(3,:)>0)),find(Text_I_diff(4,:)>0)),find(Text_I_diff(5,:)>0)),find(Text_I_diff(6,:)>0)),find(Text_I_diff(7,:)>0));
% 
% display('Position of positiively increasing codes from Jan to Jul')
% find(sum(Text_I_diff(1:6,:)>0)>4)
% 
% display('positiively increasing codes from Jan to Jul')
% Text_U(find(sum(Text_I_diff(1:6,:)>0)>4))
% 
% display('change in # of occuranace from July to Jun')
% (N_Text(7,find(sum(Text_I_diff(1:6,:)>0)>4))) - (N_Text(1,find(sum(Text_I_diff(1:6,:)>0)>4)))%biggest change
% 
% display('PDF percentage for Jan')
% ((N_Text(1,find(sum(Text_I_diff(1:6,:)>0)>4)))./sum(N_Text(1,:)))*100 %percentage ratio of the Text with rest for first month Jan
% 
% display('PDF percentage for July')
% ((N_Text(7,find(sum(Text_I_diff(1:6,:)>0)>4)))./sum(N_Text(7,:)))*100 %percentage ratio of the Text with rest for seventh month Jul
% 
% display('Difference in PDF percentage')
% 
% ((N_Text(7,find(sum(Text_I_diff(1:6,:)>0)>4)))./sum(N_Text(7,:)))*100 -((N_Text(1,find(sum(Text_I_diff(1:6,:)>0)>4)))./sum(N_TextID(1,:)))*100 %difference of percentage occurance or change in PDF

AlarmID_U(find(sum(AlarmID_I_diff(1:6,:)>0)>4))
(find(sum(AlarmID_I_diff(1:6,:)>0)>4))