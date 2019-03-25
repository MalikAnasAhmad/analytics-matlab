clear
% load('Cleaned Hirschvogel_201708291845_NewPruned.mat')
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')

totalInputVar = who;
totalInputVarPruned = totalInputVar;
totalInputVarPruned(find(~cellfun(@isempty,strfind(totalInputVarPruned,'time')))) = [];
totalInputVarPruned(find(~cellfun(@isempty,strfind(totalInputVarPruned,'Flag1')))) = [];
totalInputVarPruned(find(~cellfun(@isempty,strfind(totalInputVarPruned,'Flag2')))) = [];
totalInputVarPruned(find(~cellfun(@isempty,strfind(totalInputVarPruned,'dataColumnNames')))) = [];
totalInputVarPruned(find(~cellfun(@isempty,strfind(totalInputVarPruned,'dataColumnNamesOriginal')))) = [];


totalInputVarPruned4Display = dataColumnNames;
totalInputVarPruned4Display(find(strcmp(totalInputVarPruned4Display,'time'))) = [];
totalInputVarPruned4Display(find(strcmp(totalInputVarPruned4Display,'Flag1'))) = [];
totalInputVarPruned4Display(find(strcmp(totalInputVarPruned4Display,'Flag2'))) = [];
totalInputVarPruned4Display(find(strcmp(totalInputVarPruned4Display,'dataColumnNames'))) = [];
totalInputVarPruned4Display(find(strcmp(totalInputVarPruned4Display,'dataColumnNamesOriginal'))) = [];

Labels = zeros(size(time));
Labels(unique([find(Flag1);find(Flag2)])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

subPlotTotal = 4;
variabels2BIgnored = 3;

for FigureNo=1:ceil((numel(totalInputVar)-variabels2BIgnored)/subPlotTotal)
    H = figure(FigureNo);
    set(H,'units','normalized','outerposition',[0 0 1 1]);
    clf
    if FigureNo <= floor((numel(totalInputVar)-variabels2BIgnored)/subPlotTotal)
        for subPlotNo=1:subPlotTotal
            subplot(subPlotTotal,1,subPlotNo)
            hold on
            for Chunks = 1:size(Limits,1)
                if(Labels(Limits(Chunks,1))==1)
                    eval(['plot(time(Limits(Chunks,1):Limits(Chunks,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '(Limits(Chunks,1):Limits(Chunks,2)),''Color'',''r'')'])
                elseif(Labels(Limits(Chunks,1))==0)
                    eval(['plot(time(Limits(Chunks,1):Limits(Chunks,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '(Limits(Chunks,1):Limits(Chunks,2)),''Color'',''b'')'])
                end
            end
            title(totalInputVarPruned4Display{(subPlotNo+(FigureNo-1)*subPlotTotal),1})
            hold off        
        end
    else
        subPlotTotal = ((numel(totalInputVar)-variabels2BIgnored) - floor((numel(totalInputVar)-variabels2BIgnored)/subPlotTotal)*subPlotTotal);
        for subPlotNo=subPlotTotal:-1:1
            subplot(subPlotTotal,1,subPlotNo)
            hold on
            for Chunks = 1:size(Limits,1)
                if(Labels(Limits(Chunks,1))==1)
                    eval(['plot(time(Limits(Chunks,1):Limits(Chunks,2)),' totalInputVarPruned{((numel(totalInputVar)-variabels2BIgnored) - subPlotNo),1} '(Limits(Chunks,1):Limits(Chunks,2)),''Color'',''r'')'])
                elseif(Labels(Limits(Chunks,1))==0)
                    eval(['plot(time(Limits(Chunks,1):Limits(Chunks,2)),' totalInputVarPruned{((numel(totalInputVar)-variabels2BIgnored) - subPlotNo),1} '(Limits(Chunks,1):Limits(Chunks,2)),''Color'',''b'')'])
                end
            end
            title(totalInputVarPruned4Display{((numel(totalInputVar)-variabels2BIgnored) - subPlotNo),1})
            hold off        
        end
    end
end

hold off