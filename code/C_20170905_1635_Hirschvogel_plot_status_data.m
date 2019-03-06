clear 
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')
figure(23)
clf
ylim ([0 8])
hold on

% text(07000,1.5,'	\downarrow [1.1]	Betriebsart AUS	[OFF]')
% text(08000,2.5,'	\downarrow [1.2]	Betriebsart Einzelhub	[Single Stroke]')
% text(09000,3.5,'	\downarrow [1.3]	Betriebsart Einrichten	[Setup]')
% text(10000,4.5,'	\downarrow [1.4]	Betriebsart Automatik	[Automatic (Normal)]')
% text(11000,5.5,'	\downarrow [1.5]	Betriebsart Werkzeugwechsel	[Tool replacement]')
% text(12000,6.5,'	\downarrow [1.6]	Betriebsart Werkzeughalterwechsel	[Tool holder replacement]')
% text(13000,7.5,'	\downarrow [1.7]	Betriebsart Automatik Testbetrieb	[Automatic Test]')


Labels = zeros(size(time));
Labels(find([BetriebsartAUS])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

for Chunks = 1:size(Limits,1)
    if sum(Labels(Limits(Chunks,1):Limits(Chunks,2)))>0
        plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAUS(Limits(Chunks,1):Limits(Chunks,2))*1,'Color','r', 'LineWidth',2)
%         text(07000,1.5,'	\downarrow [1.1]	Betriebsart AUS	[OFF]')
    end
end

Labels = zeros(size(time));
Labels(find([BetriebsartEinzelhub])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

for Chunks = 1:size(Limits,1)
	if sum(Labels(Limits(Chunks,1):Limits(Chunks,2)))>0
        plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinzelhub(Limits(Chunks,1):Limits(Chunks,2))*2,'Color','y','LineWidth',2)
    end
end

Labels = zeros(size(time));
Labels(find([BetriebsartEinrichten])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

for Chunks = 1:size(Limits,1)
        if sum(Labels(Limits(Chunks,1):Limits(Chunks,2)))>0
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartEinrichten(Limits(Chunks,1):Limits(Chunks,2))*3,'Color','b','LineWidth',2)
        end
end

Labels = zeros(size(time));
Labels(find([BetriebsartAutomatik])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

for Chunks = 1:size(Limits,1)
        if sum(Labels(Limits(Chunks,1):Limits(Chunks,2)))>0
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatik(Limits(Chunks,1):Limits(Chunks,2))*4,'Color','c', 'LineWidth',2)
        end
end

Labels = zeros(size(time));
Labels(find([BetriebsartWerkzeugwechsel])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

for Chunks = 1:size(Limits,1)
        if sum(Labels(Limits(Chunks,1):Limits(Chunks,2)))>0
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartWerkzeugwechsel(Limits(Chunks,1):Limits(Chunks,2))*5,'Color','m', 'LineWidth',2)
        end
end

Labels = zeros(size(time));
Labels(find([BetriebsartWerkzeughalterwechsel])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

for Chunks = 1:size(Limits,1)
        if sum(Labels(Limits(Chunks,1):Limits(Chunks,2)))>0
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartWerkzeughalterwechsel(Limits(Chunks,1):Limits(Chunks,2))*6,'Color','g', 'LineWidth',2)
        end
end

Labels = zeros(size(time));
Labels(find([BetriebsartAutomatikTestbetrieb])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

for Chunks = 1:size(Limits,1)
        if sum(Labels(Limits(Chunks,1):Limits(Chunks,2)))>0
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),BetriebsartAutomatikTestbetrieb(Limits(Chunks,1):Limits(Chunks,2))*7,'Color','k', 'LineWidth',2)
        end
end

hold off