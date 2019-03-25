% load('Albrecht Szeitszam - 60905500_M_2015_Mapped.mat')

AlarmID_I_Benign = AlarmID_I;
AlarmID_I_Benign(Fehler_Location)=[];
AlarmID_I_Fehler = AlarmID_I(Fehler_Location);

BetrKennzeichen_I_Benign = BetrKennzeichen_I;
BetrKennzeichen_I_Benign(Fehler_Location)=[];
BetrKennzeichen_I_Fehler = BetrKennzeichen_I(Fehler_Location);

Confirmed_Benign = Confirmed;
Confirmed_Benign(Fehler_Location)=[];
Confirmed_Fehler = Confirmed(Fehler_Location);

InProduktion_Benign = InProduktion;
InProduktion_Benign(Fehler_Location)=[];
InProduktion_Fehler = InProduktion(Fehler_Location);

Istwert1_Benign = Istwert1;
Istwert1_Benign(Fehler_Location)=[];
Istwert1_Fehler = Istwert1(Fehler_Location);

Istwert2_Benign = Istwert2;
Istwert2_Benign(Fehler_Location)=[];
Istwert2_Fehler = Istwert2(Fehler_Location);

Istwert3_Benign = Istwert3;
Istwert3_Benign(Fehler_Location)=[];
Istwert3_Fehler = Istwert3(Fehler_Location);

Istwert4_Benign = Istwert4;
Istwert4_Benign(Fehler_Location)=[];
Istwert4_Fehler = Istwert4(Fehler_Location);

Zusatzinfo1_Benign = Zusatzinfo1;
Zusatzinfo1_Benign(Fehler_Location)=[];
Zusatzinfo1_Fehler = Zusatzinfo1(Fehler_Location);

Zusatzinfo2_Benign = Zusatzinfo2;
Zusatzinfo2_Benign(Fehler_Location)=[];
Zusatzinfo2_Fehler = Zusatzinfo2(Fehler_Location);

Zusatzinfo3_Benign = Zusatzinfo3;
Zusatzinfo3_Benign(Fehler_Location)=[];
Zusatzinfo3_Fehler = Zusatzinfo3(Fehler_Location);

Zusatzinfo4_Benign = Zusatzinfo4;
Zusatzinfo4_Benign(Fehler_Location)=[];
Zusatzinfo4_Fehler = Zusatzinfo4(Fehler_Location);

Zusatzinfo5_Benign = Zusatzinfo5;
Zusatzinfo5_Benign(Fehler_Location)=[];
Zusatzinfo5_Fehler = Zusatzinfo5(Fehler_Location);

Zusatzinfo6_Benign = Zusatzinfo6;
Zusatzinfo6_Benign(Fehler_Location)=[];
Zusatzinfo6_Fehler = Zusatzinfo6(Fehler_Location);

Zusatzinfo7_Benign = Zusatzinfo7;
Zusatzinfo7_Benign(Fehler_Location)=[];
Zusatzinfo7_Fehler = Zusatzinfo7(Fehler_Location);

Zusatzinfo8_Benign = Zusatzinfo8;
Zusatzinfo8_Benign(Fehler_Location)=[];
Zusatzinfo8_Fehler = Zusatzinfo8(Fehler_Location);

Klasse_Benign = Klasse;
Klasse_Benign(Fehler_Location)=[];
Klasse_Fehler = Klasse(Fehler_Location);

Kommentar_I_Benign = Kommentar_I;
Kommentar_I_Benign(Fehler_Location)=[];
Kommentar_I_Fehler = Kommentar_I(Fehler_Location);

MaschineNr_Benign = MaschineNr;
MaschineNr_Benign(Fehler_Location)=[];
MaschineNr_Fehler = MaschineNr(Fehler_Location);

Ort_I_Benign = Ort_I;
Ort_I_Benign(Fehler_Location)=[];
Ort_I_Fehler = Ort_I(Fehler_Location);

Sektion_Benign = Sektion;
Sektion_Benign(Fehler_Location)=[];
Sektion_Fehler = Sektion(Fehler_Location);

Text_I_Benign = Text_I;
Text_I_Benign(Fehler_Location)=[];
Text_I_Fehler = Text_I(Fehler_Location);

TextID_I_Benign = TextID_I;
TextID_I_Benign(Fehler_Location)=[];
TextID_I_Fehler = TextID_I(Fehler_Location);
% hold on 

% str2num(time(end-1:end)) + str2num(time(end-4:end-3))*60 + str2num(time(end-7:end-6))*3600 +str2num(time(1:2))*24*3600 + days_Month(str2num(time(4:5)))*2678400


figure(1)
% scatter(AlarmID_I_Benign,BetrKennzeichen_I_Benign,'b','+')
% scatter(AlarmID_I_Benign,Confirmed_Benign,'b','+')
% scatter(AlarmID_I_Benign,InProduktion_Benign,'b','+')
% scatter(BetrKennzeichen_I_Benign,InProduktion_Benign,'b','+')
scatter(AlarmID_I_Benign,Istwert1_Benign,'b','+')
hold on
% scatter(AlarmID_I_Fehler,BetrKennzeichen_I_Fehler,'r','o')
% scatter(AlarmID_I_Fehler,Confirmed_Fehler,'r','o')
% scatter(AlarmID_I_Fehler,InProduktion_Fehler,'r','o')
% scatter(BetrKennzeichen_I_Fehler,InProduktion_Fehler,'r','+')
scatter(AlarmID_I_Fehler,Istwert1_Fehler,'r','o')
hold off
xlabel('AlarmID')
ylabel('BetrKennzeichen')

% figure(2)
% stairs(Fehler_plot)
% hold on
% stairs(InProduktion,'r')
% hold off