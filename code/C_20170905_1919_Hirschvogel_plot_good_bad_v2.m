clear 
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')
figure(26)
clf
ylim ([-1 2])
hold on
Labels = ones(numel(time),1);
BetriebsartAutomatik_Label = (BetriebsartAutomatik>=1);
Labels(find(BetriebsartAutomatik<1)) = 0;

TemperaturDruckstangenlagerlinks_Label = (TemperaturDruckstangenlagerlinks>(((max(TemperaturDruckstangenlagerlinks) - min(TemperaturDruckstangenlagerlinks))/4) + min(TemperaturDruckstangenlagerlinks)));
Labels(find(TemperaturDruckstangenlagerlinks<(((max(TemperaturDruckstangenlagerlinks) - min(TemperaturDruckstangenlagerlinks))/4) + min(TemperaturDruckstangenlagerlinks)))) = 0;

TemperaturDruckstangenlagerrechts_Label = (TemperaturDruckstangenlagerrechts>(((max(TemperaturDruckstangenlagerrechts) - min(TemperaturDruckstangenlagerrechts))/4) + min(TemperaturDruckstangenlagerrechts)));
Labels(find(TemperaturDruckstangenlagerrechts<(((max(TemperaturDruckstangenlagerrechts) - min(TemperaturDruckstangenlagerrechts))/4) + min(TemperaturDruckstangenlagerrechts)))) = 0;

TemperaturExzenterlagerlinks_Label = (TemperaturExzenterlagerlinks>(((max(TemperaturExzenterlagerlinks) - min(TemperaturExzenterlagerlinks))/4) + min(TemperaturExzenterlagerlinks)));
Labels(find(TemperaturExzenterlagerlinks<(((max(TemperaturExzenterlagerlinks) - min(TemperaturExzenterlagerlinks))/4) + min(TemperaturExzenterlagerlinks)))) = 0;

TemperaturExzenterlagerrechts_Label = (TemperaturExzenterlagerrechts>(((max(TemperaturExzenterlagerrechts) - min(TemperaturExzenterlagerrechts))/4) + min(TemperaturExzenterlagerrechts)));
Labels(find(TemperaturExzenterlagerrechts<(((max(TemperaturExzenterlagerrechts) - min(TemperaturExzenterlagerrechts))/4) + min(TemperaturExzenterlagerrechts)))) = 0;

TemperaturStnderlagerlinks_Label = (TemperaturStnderlagerlinks>(((max(TemperaturStnderlagerlinks) - min(TemperaturStnderlagerlinks))/4) + min(TemperaturStnderlagerlinks)));
Labels(find(TemperaturStnderlagerlinks<(((max(TemperaturStnderlagerlinks) - min(TemperaturStnderlagerlinks))/4) + min(TemperaturStnderlagerlinks)))) = 0;

TemperaturStnderlagerrechts_Label = (TemperaturStnderlagerrechts>(((max(TemperaturStnderlagerrechts) - min(TemperaturStnderlagerrechts))/4) + min(TemperaturStnderlagerrechts)));
Labels(find(TemperaturStnderlagerrechts<(((max(TemperaturStnderlagerrechts) - min(TemperaturStnderlagerrechts))/4) + min(TemperaturStnderlagerrechts)))) = 0;

ltemperaturATFAggregatHKB_Label = (ltemperaturATFAggregatHKB>(((max(ltemperaturATFAggregatHKB) - min(ltemperaturATFAggregatHKB))/4) + min(ltemperaturATFAggregatHKB)));
Labels(find(ltemperaturATFAggregatHKB<(((max(ltemperaturATFAggregatHKB) - min(ltemperaturATFAggregatHKB))/4) + min(ltemperaturATFAggregatHKB)))) = 0;

ltemperaturHFCAggregatStelausstoer_Label = (ltemperaturHFCAggregatStelausstoer>(((max(ltemperaturHFCAggregatStelausstoer) - min(ltemperaturHFCAggregatStelausstoer))/4) + min(ltemperaturHFCAggregatStelausstoer)));
Labels(find(ltemperaturHFCAggregatStelausstoer<(((max(ltemperaturHFCAggregatStelausstoer) - min(ltemperaturHFCAggregatStelausstoer))/4) + min(ltemperaturHFCAggregatStelausstoer)))) = 0;

ltemperaturHLPDAggregatTischauswerfer_Label = (ltemperaturHLPDAggregatTischauswerfer>(((max(ltemperaturHLPDAggregatTischauswerfer) - min(ltemperaturHLPDAggregatTischauswerfer))/4) + min(ltemperaturHLPDAggregatTischauswerfer)));
Labels(find(ltemperaturHLPDAggregatTischauswerfer<(((max(ltemperaturHLPDAggregatTischauswerfer) - min(ltemperaturHLPDAggregatTischauswerfer))/4) + min(ltemperaturHLPDAggregatTischauswerfer)))) = 0;

ltemperaturKhllHKBRcklauf_Label = (ltemperaturKhllHKBRcklauf>(((max(ltemperaturKhllHKBRcklauf) - min(ltemperaturKhllHKBRcklauf))/4) + min(ltemperaturKhllHKBRcklauf)));
Labels(find(ltemperaturKhllHKBRcklauf<(((max(ltemperaturKhllHKBRcklauf) - min(ltemperaturKhllHKBRcklauf))/4) + min(ltemperaturKhllHKBRcklauf)))) = 0;

ltemperaturKhllHKBVorlauf_Label = (ltemperaturKhllHKBVorlauf>(((max(ltemperaturKhllHKBVorlauf) - min(ltemperaturKhllHKBVorlauf))/4) + min(ltemperaturKhllHKBVorlauf)));
Labels(find(ltemperaturKhllHKBVorlauf<(((max(ltemperaturKhllHKBVorlauf) - min(ltemperaturKhllHKBVorlauf))/4) + min(ltemperaturKhllHKBVorlauf)))) = 0;

% ltemperaturHLPDAggregatTischauswerfer_Label = (ltemperaturHLPDAggregatTischauswerfer>(max(ltemperaturHLPDAggregatTischauswerfer)/4));
% Labels(find(ltemperaturHLPDAggregatTischauswerfer<(max(ltemperaturHLPDAggregatTischauswerfer)/4))) = 0;

% ltemperaturKhllHKBRcklauf_Label = (ltemperaturKhllHKBRcklauf>(max(ltemperaturKhllHKBRcklauf)/4));
% Labels(find(ltemperaturKhllHKBRcklauf<(max(ltemperaturKhllHKBRcklauf)/4))) = 0;

% ltemperaturKhllHKBVorlauf_Label = (ltemperaturKhllHKBVorlauf>(max(ltemperaturKhllHKBVorlauf)/4));
% Labels(find(ltemperaturKhllHKBVorlauf<(max(ltemperaturKhllHKBVorlauf)/4))) = 0;

% Labels(find(PresskraftGesamtMaximal>mean(PresskraftGesamtMaximal))) = 1;
% Labels(find(PresskraftStnderBedienseitelinksMax>mean(PresskraftStnderBedienseitelinksMax))) = 1;
% Labels(find(PresskraftStnderBedienseiterechtMax>mean(PresskraftStnderBedienseiterechtMax))) = 1;
% Labels(find(PresskraftStnderRckseitelinksMax>mean(PresskraftStnderRckseitelinksMax))) = 1;
% Labels(find(PresskraftStnderRckseiterechtsMax>mean(PresskraftStnderRckseiterechtsMax))) = 1;

plot(time,Labels)
title ('good data points')
hold off

figure(27)
clf
ylim ([-1 2])
hold on

Flags = zeros(size(time));
Flags(unique([find(Flag1);find(Flag2)])) = 1;

Flags_LL = [1;find(diff(Flags))+1];
Flags_UL = [Flags_LL(2:end)'-1 numel(Flags)]';
Flag_Limits = [Flags_LL Flags_UL];

for Chunks = 1:size(Flag_Limits,1)
    if sum(Flags(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)))>0
        plot(time(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)),Labels(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2))*1,'Color','r', 'LineWidth',2)
    else
        plot(time(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)),Labels(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2))*1,'Color','b', 'LineWidth',.1)
    end
end
hold off

title ('good data points with Manual Failure Markings')


figure(28)


clf
ylim ([-1 2])


Flags = zeros(size(time));
Flags(unique([find(Flag1);find(Flag2)])) = 1;

Flags_LL = [1;find(diff(Flags))+1];
Flags_UL = [Flags_LL(2:end)'-1 numel(Flags)]';
Flag_Limits = [Flags_LL Flags_UL];

subplot(7,1,1)
hold on

for Chunks = 1:size(Flag_Limits,1)
    if sum(Flags(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)))>0
        plot(time(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)),Labels(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2))*1,'Color','r', 'LineWidth',2)
    else
        plot(time(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)),Labels(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2))*1,'Color','b', 'LineWidth',.1)
    end
end
hold off

title ('good data points with Manual Failure Markings')

subplot(7,1,2)
plot(time,BetriebsartAutomatik)
title('[1.4]	Betriebsart Automatik	[Automatic (Normal)]')

subplot(7,1,3)
plot(time,TemperaturDruckstangenlagerlinks)
title('[0:2] Temperatur Druckstangenlager links [bearing temperature push rod left]')

subplot(7,1,4)
plot(time,TemperaturDruckstangenlagerrechts)
title('[0:3] Temperatur Druckstangenlager rechts [bearing temperature push rod right]')

subplot(7,1,5)
plot(time,TemperaturExzenterlagerlinks)
title('[0:0] Temperatur Exzenterlager links [bearing temperature eccentric shaft left]')

subplot(7,1,6)
plot(time,TemperaturExzenterlagerrechts)
title('[0:1] Temperatur Exzenterlager rechts [bearing temperature eccentric shaft right]')

subplot(7,1,7)
plot(time,TemperaturStnderlagerlinks)
title('[0:4] Temperatur St?nderlager links [bearing temperature frame left]')

figure(29)
clf
ylim ([-1 2])


Flags = zeros(size(time));
Flags(unique([find(Flag1);find(Flag2)])) = 1;

Flags_LL = [1;find(diff(Flags))+1];
Flags_UL = [Flags_LL(2:end)'-1 numel(Flags)]';
Flag_Limits = [Flags_LL Flags_UL];

subplot(7,1,1)
hold on

for Chunks = 1:size(Flag_Limits,1)
    if sum(Flags(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)))>0
        plot(time(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)),Labels(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2))*1,'Color','r', 'LineWidth',2)
    else
        plot(time(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2)),Labels(Flag_Limits(Chunks,1):Flag_Limits(Chunks,2))*1,'Color','b', 'LineWidth',.1)
    end
end
hold off

title ('good data points with Manual Failure Markings')


subplot(7,1,2)
plot(time,TemperaturStnderlagerrechts)
title('[0:5] Temperatur St?nderlager rechts [bearing temperature frame right]')

subplot(7,1,3)
plot(time,ltemperaturATFAggregatHKB)
title('[0:7] ?ltemperatur ATF Aggregat HKB [oil temperature clutch - brake hydraulic unit]')

subplot(7,1,4)
plot(time,ltemperaturHFCAggregatStelausstoer)
title('[0:8] ?ltemperatur HFC Aggregat St??elaussto?er [oil temperature slide ejector hydraulic unit]')

subplot(7,1,5)
plot(time,ltemperaturHLPDAggregatTischauswerfer)
title('[0:6] ?ltemperatur HLPD Aggregat [oil temperature table ejector hydraulic unit]')

subplot(7,1,6)
plot(time,ltemperaturKhllHKBRcklauf)
title('[0:10] ?ltemperatur K?hl?l HKB R?cklauf [cooling oil temperature clutch - brake return line]')
subplot(7,1,7)
plot(time,ltemperaturKhllHKBVorlauf)
title('[0:9] ?ltemperatur K?hl?l HKB Vorlauf [cooling oil temperature clutch - brake feed line]')
