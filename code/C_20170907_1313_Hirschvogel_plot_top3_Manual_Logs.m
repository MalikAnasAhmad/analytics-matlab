clear 
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')

Manual_Failure_Logs = {'24-Jul-2017 05:27:56','24-Jul-2017 07:26:56';
    '24-Jul-2017 07:27:26','24-Jul-2017 09:00:26';%
    '24-Jul-2017 09:00:56','24-Jul-2017 10:59:56';
    '24-Jul-2017 14:31:56','24-Jul-2017 16:30:57';
    '24-Jul-2017 16:31:27','24-Jul-2017 22:00:27';%
    '24-Jul-2017 22:00:57','24-Jul-2017 23:59:57';
    '28-Jul-2017 10:04:00','28-Jul-2017 12:03:31';
    '28-Jul-2017 12:04:01','28-Jul-2017 13:02:01';%
    '28-Jul-2017 13:03:01','28-Jul-2017 15:02:01'};

Limits = [1 , find(datenum(Manual_Failure_Logs{1,1})==datenum(time))-1;
    find(datenum(Manual_Failure_Logs{1,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{1,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{2,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{2,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{3,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{3,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{3,2})==datenum(time))+1 , find(datenum(Manual_Failure_Logs{4,1})==datenum(time))-1;
    find(datenum(Manual_Failure_Logs{4,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{4,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{5,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{5,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{6,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{6,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{6,2})==datenum(time))+1 , find(datenum(Manual_Failure_Logs{7,1})==datenum(time))-1;
    find(datenum(Manual_Failure_Logs{7,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{7,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{8,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{8,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{9,1})==datenum(time)) , find(datenum(Manual_Failure_Logs{9,2})==datenum(time));
    find(datenum(Manual_Failure_Logs{9,2})==datenum(time))+1 , numel(time)];

manualFlags = zeros(numel(time),1);

manualFlags(Limits(2,1):Limits(2,2))=1;
manualFlags(Limits(3,1):Limits(3,2))=2;
manualFlags(Limits(4,1):Limits(4,2))=1;

manualFlags(Limits(6,1):Limits(6,2))=1;
manualFlags(Limits(7,1):Limits(7,2))=3;
manualFlags(Limits(8,1):Limits(8,2))=1;

manualFlags(Limits(10,1):Limits(10,2))=1;
manualFlags(Limits(11,1):Limits(11,2))=2;
manualFlags(Limits(12,1):Limits(12,2))=1;
%%
figure(30)
clf
%%
subplot(4,1,1)
 
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAUS(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAUS(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAUS(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAUS(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end


hold off
ylim([0 2])
title('[1.1]	Betriebsart AUS	[OFF]')
%%
subplot(4,1,2)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinzelhub(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinzelhub(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinzelhub(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinzelhub(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
hold off
ylim([0 2])
title('[1.2]	Betriebsart Einzelhub	[Single Stroke]')
%%
subplot(4,1,3)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinrichten(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinrichten(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinrichten(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinrichten(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
hold off
ylim([0 2])
title('[1.3]	Betriebsart Einrichten	[Setup]')
%%
subplot(4,1,4)

hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatik(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatik(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatik(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatik(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
hold off
ylim([0 2])
title('[1.4]	Betriebsart Automatik	[Automatic (Normal)]')

%%
figure(31)
clf
%%
subplot(3,1,1)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartWerkzeugwechsel(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartWerkzeugwechsel(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartWerkzeugwechsel(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatik(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
hold off
ylim([0 2])
title('[1.5]	Betriebsart Werkzeugwechsel	[Tool replacement]')
%%
subplot(3,1,2)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartWerkzeughalterwechsel(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartWerkzeughalterwechsel(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartWerkzeughalterwechsel(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatik(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
hold off
ylim([0 2])
title('[1.6]	Betriebsart Werkzeughalterwechsel	[Tool holder replacement]')
%%
subplot(3,1,3)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatikTestbetrieb(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatikTestbetrieb(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatikTestbetrieb(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatik(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
hold off
ylim([0 2])
title('[1.7]	Betriebsart Automatik Testbetrieb	[Automatic Test]')


%%
figure(32)
clf
%%
subplot(4,1,1)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturExzenterlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturExzenterlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturExzenterlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturExzenterlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(TemperaturExzenterlagerlinks)/2),'Color','k')
hold off
title('[0:0] Temperatur Exzenterlager links [bearing temperature eccentric shaft left]')
%%
subplot(4,1,2)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturExzenterlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturExzenterlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturExzenterlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturExzenterlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(TemperaturExzenterlagerrechts)/2),'Color','k')
hold off
title('[0:1] Temperatur Exzenterlager rechts [bearing temperature eccentric shaft right]')
%%
subplot(4,1,3)
 
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturDruckstangenlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturDruckstangenlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturDruckstangenlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturDruckstangenlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(TemperaturDruckstangenlagerlinks)/2),'Color','k')
hold off
title('[0:2] Temperatur Druckstangenlager links [bearing temperature push rod left]')
%%
subplot(4,1,4)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturDruckstangenlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturDruckstangenlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturDruckstangenlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturDruckstangenlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(TemperaturDruckstangenlagerrechts)/2),'Color','k')
hold off
title('[0:3] Temperatur Druckstangenlager rechts [bearing temperature push rod right]')
%%
figure(33)
clf
%%
subplot(4,1,1)
 
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturStnderlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturStnderlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturStnderlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturStnderlagerlinks(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(TemperaturStnderlagerlinks)/2),'Color','k')

hold off
title('[0:4] Temperatur St?nderlager links [bearing temperature frame left]')
%%
subplot(4,1,2)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturStnderlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturStnderlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturStnderlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),TemperaturStnderlagerrechts(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(TemperaturStnderlagerrechts)/2),'Color','k')
hold off
title('[0:5] Temperatur St?nderlager rechts [bearing temperature frame right]')
%%
subplot(4,1,3)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturHLPDAggregatTischauswerfer(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturHLPDAggregatTischauswerfer(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturHLPDAggregatTischauswerfer(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturHLPDAggregatTischauswerfer(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(ltemperaturHLPDAggregatTischauswerfer)/2),'Color','k')
hold off
title('[0:6] ?ltemperatur HLPD Aggregat [oil temperature table ejector hydraulic unit]')
%%
subplot(4,1,4)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturATFAggregatHKB(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturATFAggregatHKB(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturATFAggregatHKB(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturATFAggregatHKB(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(ltemperaturATFAggregatHKB)/2),'Color','k')
hold off
title('[0:7] ?ltemperatur ATF Aggregat HKB [oil temperature clutch - brake hydraulic unit]')
%%
figure(34)
clf
%%
subplot(3,1,1)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturHFCAggregatStelausstoer(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturHFCAggregatStelausstoer(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturHFCAggregatStelausstoer(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturHFCAggregatStelausstoer(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(ltemperaturHFCAggregatStelausstoer)/2),'Color','k')
hold off
title('[0:8] ?ltemperatur HFC Aggregat St??elaussto?er [oil temperature slide ejector hydraulic unit]')
%%
subplot(3,1,2)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturKhllHKBVorlauf(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturKhllHKBVorlauf(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturKhllHKBVorlauf(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturKhllHKBVorlauf(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(ltemperaturKhllHKBVorlauf)/2),'Color','k')
hold off
title('[0:9] ?ltemperatur K?hl?l HKB Vorlauf [cooling oil temperature clutch - brake feed line]')
%%
subplot(3,1,3)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturKhllHKBRcklauf(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturKhllHKBRcklauf(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturKhllHKBRcklauf(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),ltemperaturKhllHKBRcklauf(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(ltemperaturKhllHKBRcklauf)/2),'Color','k')
hold off
title('[0:10] ?ltemperatur K?hl?l HKB R?cklauf [cooling oil temperature clutch - brake return line]')
%%
figure(35)
clf
%%
subplot(5,1,1)
 
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftGesamtMaximal(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftGesamtMaximal(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftGesamtMaximal(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftGesamtMaximal(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(PresskraftGesamtMaximal)/2),'Color','k')
hold off
title('[0:15] Presskraft Gesamt Maximal [total max. forging force]')
%%
subplot(5,1,2)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderBedienseitelinksMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderBedienseitelinksMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderBedienseitelinksMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderBedienseitelinksMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(PresskraftStnderBedienseitelinksMax)/2),'Color','k')
hold off
title('[0:16] Presskraft St?nder Bedienseite links Max [max. forging force front left]')
%%
subplot(5,1,3)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderBedienseiterechtMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderBedienseiterechtMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderBedienseiterechtMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderBedienseiterechtMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(PresskraftStnderBedienseiterechtMax)/2),'Color','k')
hold off
title('[0:17] Presskraft St?nder Bedienseite recht Max [max. forging force front right]')
%%
subplot(5,1,4)

hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderRckseitelinksMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderRckseitelinksMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderRckseitelinksMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderRckseitelinksMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(PresskraftStnderRckseitelinksMax)/2),'Color','k')
hold off
title('[0:18] Presskraft St?nder R?ckseite links Max [max. forging force rear left]')
%%
subplot(5,1,5)

hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderRckseiterechtsMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderRckseiterechtsMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderRckseiterechtsMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PresskraftStnderRckseiterechtsMax(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*(max(PresskraftStnderRckseiterechtsMax)/2),'Color','k')
hold off
title('[0:19] Presskraft St?nder R?ckseite rechts Max [max. forging force rear right]')