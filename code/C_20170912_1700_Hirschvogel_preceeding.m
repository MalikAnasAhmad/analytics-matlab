clear 
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')

%% removing useless variable names and enlisting the data variable names
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


%% good data time and bad data time
BadData_timePeriod = {'24-Jul-2017 12:45:26','24-Jul-2017 13:44:56';
    '25-Jul-2017 09:05:27','25-Jul-2017 10:05:57';
    '26-Jul-2017 12:07:29','26-Jul-2017 13:07:59';
    };

GoodData_timePeriod = {'26-Jul-2017 19:19:29','26-Jul-2017 20:19:59';
    '27-Jul-2017 20:02:00','27-Jul-2017 21:02:00';
    '28-Jul-2017 17:03:01','28-Jul-2017 18:03:01';
    '28-Jul-2017 19:54:01','28-Jul-2017 20:54:01';
    };


% GDtP = [find(datenum(GoodData_timePeriod{1,1})==datenum(time)):find(datenum(GoodData_timePeriod{1,2})==datenum(time)) ...
%     find(datenum(GoodData_timePeriod{2,1})==datenum(time)):find(datenum(GoodData_timePeriod{2,2})==datenum(time)) ...
%     find(datenum(GoodData_timePeriod{3,1})==datenum(time)):find(datenum(GoodData_timePeriod{3,2})==datenum(time))];
% % GDtP_time = time(GDtP);
% 
% BDtP = [find(datenum(BadData_timePeriod{1,1})==datenum(time)):find(datenum(BadData_timePeriod{1,2})==datenum(time)) ...
%     find(datenum(BadData_timePeriod{2,1})==datenum(time)):find(datenum(BadData_timePeriod{2,2})==datenum(time)) ...
%     find(datenum(BadData_timePeriod{3,1})==datenum(time)):find(datenum(BadData_timePeriod{3,2})==datenum(time)) ...
%     find(datenum(BadData_timePeriod{4,1})==datenum(time)):find(datenum(BadData_timePeriod{4,2})==datenum(time))];

BDtP = [find(datenum(BadData_timePeriod{1,1})==datenum(time)),find(datenum(BadData_timePeriod{1,2})==datenum(time)) ;
    find(datenum(BadData_timePeriod{2,1})==datenum(time)),find(datenum(BadData_timePeriod{2,2})==datenum(time)) ;
    find(datenum(BadData_timePeriod{3,1})==datenum(time)),find(datenum(BadData_timePeriod{3,2})==datenum(time))];

GDtP = [find(datenum(GoodData_timePeriod{1,1})==datenum(time)),find(datenum(GoodData_timePeriod{1,2})==datenum(time));
    find(datenum(GoodData_timePeriod{2,1})==datenum(time)),find(datenum(GoodData_timePeriod{2,2})==datenum(time)) ;
    find(datenum(GoodData_timePeriod{3,1})==datenum(time)),find(datenum(GoodData_timePeriod{3,2})==datenum(time)) ;
    find(datenum(GoodData_timePeriod{4,1})==datenum(time)),find(datenum(GoodData_timePeriod{4,2})==datenum(time))];

%%

subPlotTotal = 4;
variabels2BIgnored = 4;

for FigureNo=1:ceil((numel(totalInputVar)-variabels2BIgnored)/subPlotTotal)
    H = figure(FigureNo+47);
    set(H,'units','normalized','outerposition',[0 0 1 1]);
    clf
    if FigureNo <= floor((numel(totalInputVar)-variabels2BIgnored)/subPlotTotal)
        for subPlotNo=1:subPlotTotal
            subplot(subPlotTotal,1,subPlotNo)
            hold on
            eval(['plot(time(GDtP(1,1):GDtP(1,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((GDtP(1,1):GDtP(1,2))),''Color'',''b'')'])
            eval(['plot(time(GDtP(2,1):GDtP(2,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((GDtP(2,1):GDtP(2,2))),''Color'',''b'')'])
            eval(['plot(time(GDtP(3,1):GDtP(3,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((GDtP(3,1):GDtP(3,2))),''Color'',''b'')'])
            eval(['plot(time(GDtP(4,1):GDtP(4,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((GDtP(4,1):GDtP(4,2))),''Color'',''b'')'])
            eval(['plot(time(BDtP(1,1):BDtP(1,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((BDtP(1,1):BDtP(1,2))),''Color'',''r'')'])
            eval(['plot(time(BDtP(2,1):BDtP(2,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((BDtP(2,1):BDtP(2,2))),''Color'',''r'')'])
            eval(['plot(time(BDtP(3,1):BDtP(3,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((BDtP(3,1):BDtP(3,2))),''Color'',''r'')'])

% % %             eval(['plot(time(BDtP),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '(BDtP),''Color'',''r'')'])
%             for Chunks = 1:size(Limits,1)
%                 if(Labels(Limits(Chunks,1))==1)
%                     eval(['plot(time(Limits(Chunks,1):Limits(Chunks,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '(Limits(Chunks,1):Limits(Chunks,2)),''Color'',''r'')'])
%                 elseif(Labels(Limits(Chunks,1))==0)
%                     eval(['plot(time(Limits(Chunks,1):Limits(Chunks,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '(Limits(Chunks,1):Limits(Chunks,2)),''Color'',''b'')'])
%                 end
%             end
            title(totalInputVarPruned4Display{(subPlotNo+(FigureNo-1)*subPlotTotal),1})
            hold off        
        end
    else
        subPlotTotal = ((numel(totalInputVar)-variabels2BIgnored) - floor((numel(totalInputVar)-variabels2BIgnored)/subPlotTotal)*subPlotTotal);
        for subPlotNo=subPlotTotal:-1:1
            subplot(subPlotTotal,1,subPlotNo)
            hold on
            eval(['plot(time(GDtP(1,1):GDtP(1,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((GDtP(1,1):GDtP(1,2))),''Color'',''b'')'])
            eval(['plot(time(GDtP(2,1):GDtP(2,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((GDtP(2,1):GDtP(2,2))),''Color'',''b'')'])
            eval(['plot(time(GDtP(3,1):GDtP(3,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((GDtP(3,1):GDtP(3,2))),''Color'',''b'')'])
            eval(['plot(time(GDtP(4,1):GDtP(4,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((GDtP(4,1):GDtP(4,2))),''Color'',''b'')'])
            eval(['plot(time(BDtP(1,1):BDtP(1,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((BDtP(1,1):BDtP(1,2))),''Color'',''r'')'])
            eval(['plot(time(BDtP(2,1):BDtP(2,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((BDtP(2,1):BDtP(2,2))),''Color'',''r'')'])
            eval(['plot(time(BDtP(3,1):BDtP(3,2)),' totalInputVarPruned{(subPlotNo+(FigureNo-1)*subPlotTotal),1} '((BDtP(3,1):BDtP(3,2))),''Color'',''r'')'])
            %             for Chunks = 1:size(Limits,1)
%                 if(Labels(Limits(Chunks,1))==1)
%                     eval(['plot(time(Limits(Chunks,1):Limits(Chunks,2)),' totalInputVarPruned{((numel(totalInputVar)-variabels2BIgnored) - subPlotNo),1} '(Limits(Chunks,1):Limits(Chunks,2)),''Color'',''r'')'])
%                 elseif(Labels(Limits(Chunks,1))==0)
%                     eval(['plot(time(Limits(Chunks,1):Limits(Chunks,2)),' totalInputVarPruned{((numel(totalInputVar)-variabels2BIgnored) - subPlotNo),1} '(Limits(Chunks,1):Limits(Chunks,2)),''Color'',''b'')'])
%                 end
%             end
            title(totalInputVarPruned4Display{((numel(totalInputVar)-variabels2BIgnored) - subPlotNo),1})
            hold off        
        end
    end
end

hold off