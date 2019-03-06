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
figure(36)
clf
%%
subplot(4,1,1)
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
subplot(4,1,2)
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
subplot(4,1,3)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),FllstandHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),FllstandHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),FllstandHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),FllstandHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*1.98*(max(FllstandHFCAggregat)/2),'Color','k')
hold off
ylim([min(FllstandHFCAggregat)-1 max(FllstandHFCAggregat)+1])
title('[0:95] F?llstand HFC Aggregat [fluid level slide ejector hydraulic unit]')
%%
subplot(4,1,4)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),HFCAggregatEin(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),HFCAggregatEin(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),HFCAggregatEin(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),HFCAggregatEin(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*1.75*(max(HFCAggregatEin)/2),'Color','k')
hold off
ylim([min(HFCAggregatEin)-1 max(HFCAggregatEin)+1])
title('[1.10] HFC Aggregat Ein [slide ejector hydraulic uint ON/OFF]')

%%
figure(37)
clf
%%
subplot(4,1,1)
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
subplot(4,1,2)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),DruckfilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),DruckfilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),DruckfilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),DruckfilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*1.75*(max(DruckfilterkontrolleHFCAggregat)/2),'Color','k')
hold off
ylim([min(DruckfilterkontrolleHFCAggregat)-1 max(DruckfilterkontrolleHFCAggregat)+1])
title('[1.16] Druckfilterkontrolle HFC Aggregat [filter control feeding line slide ejector hydraulic unit]')
%%
subplot(4,1,3)
hold on
for Chunks = 1:size(Limits,1)
    if(manualFlags(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),RcklauffilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    elseif(manualFlags(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),RcklauffilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
    elseif(manualFlags(Limits(Chunks,1))==2)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),RcklauffilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
    elseif(manualFlags(Limits(Chunks,1))==3)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),RcklauffilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
    end
end
plot(time,BetriebsartAutomatik*1.75*(max(RcklauffilterkontrolleHFCAggregat)/2),'Color','k')
hold off
ylim([min(RcklauffilterkontrolleHFCAggregat)-1 max(RcklauffilterkontrolleHFCAggregat)+1])
title('[1.17] R?cklauffilterkontrolle HFC Aggregat [filter control return line slide ejector hydraulic unit]')

% %%
% subplot(4,1,4)
% hold on
% for Chunks = 1:size(Limits,1)
%     if(manualFlags(Limits(Chunks,1))==0)
%             plot(time(Limits(Chunks,1):Limits(Chunks,2)),RcklauffilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
%     elseif(manualFlags(Limits(Chunks,1))==1)
%             plot(time(Limits(Chunks,1):Limits(Chunks,2)),RcklauffilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
%     elseif(manualFlags(Limits(Chunks,1))==2)
%             plot(time(Limits(Chunks,1):Limits(Chunks,2)),RcklauffilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','c')
%     elseif(manualFlags(Limits(Chunks,1))==3)
%             plot(time(Limits(Chunks,1):Limits(Chunks,2)),RcklauffilterkontrolleHFCAggregat(Limits(Chunks,1):Limits(Chunks,2)),'Color','g')
%     end
% end
% plot(time,BetriebsartAutomatik*1.75*(max(RcklauffilterkontrolleHFCAggregat)/2),'Color','k')
% hold off
% ylim([min(RcklauffilterkontrolleHFCAggregat)-1 max(RcklauffilterkontrolleHFCAggregat)+1])
% title('[4:6] Vib HFC - Pumpe [vibration sensor slide ejector hydraulic pump]')