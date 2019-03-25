% load('Albrecht Szeitszam - 60905500_M_2015_Mapped.mat')
Gekommen_filled = Gekommen;
% The following line is performed in order to replace the ' ' with their
% previous entries
Gekommen_filled(find(strcmp('',Gekommen_filled))) = Gekommen_filled(find(strcmp('',Gekommen_filled))-1);
time_Stamp = char(Gekommen_filled);%converting it to character so that we may access each character individually
%day of the year for each en0try
day_of_Year = zeros(length(Gekommen_filled),1);
day_of_Year(2:end)  = str2num(time_Stamp(2:end,1:2))+ days_Month(str2num(time_Stamp(2:end,4:5)))';
entry_Length_4_a_Day = zeros(2,365);% min, max
for i=1:365
    if(min(find(day_of_Year==i)))
        entry_Length_4_a_Day(1,i) = min(find(day_of_Year==i));
        entry_Length_4_a_Day(2,i) = max(find(day_of_Year==i));
    end
end

entry_Length_4_a_Day(find(entry_Length_4_a_Day==0))=1;%replace 0 with one

MaschineNr_per_day = ones(365,max(diff(entry_Length_4_a_Day))).*max(MaschineNr)+1;
for i=1:365
    MaschineNr_per_day(i,1:1+entry_Length_4_a_Day(2,i)-entry_Length_4_a_Day(1,i)) = MaschineNr(entry_Length_4_a_Day(1,i):entry_Length_4_a_Day(2,i))';
end
MaschineNr_per_day(find(MaschineNr_per_day==max(MaschineNr)+1))=0;
% MaschineNr_per_day(find(MaschineNr_per_day==max(MaschineNr)+1))=[];%it
% puts the whole 2D array into 1D So can not ise this


% CL_ML_Prediction_data_table = table(Fehler_plot,MaschineNr,Sektion,AlarmID_I,TextID_I,Klasse,InProduktion,Gekuppelt,Ort_I,Kommentar_I,Confirmed,Istwert1,Istwert2,Istwert3,Istwert4,BetrKennzeichen_I,Zusatzinfo1,Zusatzinfo2,Zusatzinfo3,Zusatzinfo4,Zusatzinfo5,Zusatzinfo6,Zusatzinfo7,Zusatzinfo8);

diff_Error = diff(Fehler_Location);

% diff_Error(intersect(find(diff_Error>=1),find(diff_Error<=10))) = [];

max(diff_Error)
min(diff_Error)