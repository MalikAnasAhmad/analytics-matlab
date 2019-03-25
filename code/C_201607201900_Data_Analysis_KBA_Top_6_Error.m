% load('Albrecht Szeitszam - 60905500_M_2015_Mapped.mat')
% Error=2;
% Error=8;
% Error=9;
% Error=41;
% Error=99;
Error=10;

I1 = Istwert1(Fehler_Location(find(Text_Fehler_I==Error)));
I2 = Istwert2(Fehler_Location(find(Text_Fehler_I==Error)));
I3 = Istwert3(Fehler_Location(find(Text_Fehler_I==Error)));
I4 = Istwert4(Fehler_Location(find(Text_Fehler_I==Error)));
Z1 = Zusatzinfo1(Fehler_Location(find(Text_Fehler_I==Error)));
Z2 = Zusatzinfo2(Fehler_Location(find(Text_Fehler_I==Error)));
Z3 = Zusatzinfo3(Fehler_Location(find(Text_Fehler_I==Error)));
Z4 = Zusatzinfo4(Fehler_Location(find(Text_Fehler_I==Error)));
Z5 = Zusatzinfo5(Fehler_Location(find(Text_Fehler_I==Error)));
Z6 = Zusatzinfo6(Fehler_Location(find(Text_Fehler_I==Error)));
Z7 = Zusatzinfo7(Fehler_Location(find(Text_Fehler_I==Error)));
Z8 = Zusatzinfo8(Fehler_Location(find(Text_Fehler_I==Error)));

AD = [max([I1 I2 I3 I4 Z1 Z2 Z3 Z4 Z5 Z6 Z7 Z8])' mean([I1 I2 I3 I4 Z1 Z2 Z3 Z4 Z5 Z6 Z7 Z8])' min([I1 I2 I3 I4 Z1 Z2 Z3 Z4 Z5 Z6 Z7 Z8])' std([I1 I2 I3 I4 Z1 Z2 Z3 Z4 Z5 Z6 Z7 Z8])' var([I1 I2 I3 I4 Z1 Z2 Z3 Z4 Z5 Z6 Z7 Z8])'];