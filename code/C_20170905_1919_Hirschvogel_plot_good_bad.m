clear 
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')
figure(24)
clf
ylim ([-1 2])
hold on
Labels = zeros(numel(time),1);
Labels(find(BetriebsartAutomatik>0)) = 1;

Labels(find(TemperaturDruckstangenlagerlinks>40)) = 1;
Labels(find(TemperaturDruckstangenlagerrechts>40)) = 1;
Labels(find(TemperaturExzenterlagerlinks>40)) = 1;
Labels(find(TemperaturExzenterlagerrechts>40)) = 1;
Labels(find(TemperaturStnderlagerlinks>40)) = 1;
Labels(find(TemperaturStnderlagerrechts>40)) = 1;
Labels(find(ltemperaturATFAggregatHKB>40)) = 1;
Labels(find(ltemperaturHFCAggregatStelausstoer>40)) = 1;
Labels(find(ltemperaturHLPDAggregatTischauswerfer>40)) = 1;
Labels(find(ltemperaturKhllHKBRcklauf>40)) = 1;
Labels(find(ltemperaturKhllHKBVorlauf>40)) = 1;

Labels(find(PresskraftGesamtMaximal>mean(PresskraftGesamtMaximal))) = 1;
Labels(find(PresskraftStnderBedienseitelinksMax>mean(PresskraftStnderBedienseitelinksMax))) = 1;
Labels(find(PresskraftStnderBedienseiterechtMax>mean(PresskraftStnderBedienseiterechtMax))) = 1;
Labels(find(PresskraftStnderRckseitelinksMax>mean(PresskraftStnderRckseitelinksMax))) = 1;
Labels(find(PresskraftStnderRckseiterechtsMax>mean(PresskraftStnderRckseiterechtsMax))) = 1;

plot(time,Labels)
title ('good data points')
hold off

figure(25)
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