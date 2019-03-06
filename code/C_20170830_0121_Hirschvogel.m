figure(1)
Labels = zeros(size(time));
Labels(unique([find(Flag1);find(Flag2)])) = 1;

LL = [1;find(diff(Labels))+1];
UL = [LL(2:end)'-1 numel(Labels)]';
Limits = [LL UL];

hold on
for Chunks = 1:size(Limits,1)
    if(Labels(Limits(Chunks,1))==1)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PositionStelDrehgeber(Limits(Chunks,1):Limits(Chunks,2)),'Color','r')
        elseif(Labels(Limits(Chunks,1))==0)
            plot(time(Limits(Chunks,1):Limits(Chunks,2)),PositionStelDrehgeber(Limits(Chunks,1):Limits(Chunks,2)),'Color','b')
    end
end
% xlim([1 numel(time)])
hold off


% close all
% figure(1)
% % x = 0:.05:2*pi;
% x = 1:numel(time);
% % y = sin(x);
% y = PositionStelDrehgeber';
% z = zeros(size(x));
% col = (Flag1)';  % This is the color, vary with x in this case.
% map=[0,0,1;
%     0.5,0.25,0;
%     0,0.75,0;
%     0,0.75,0.75;
%     0.75,0,0;
%     0.75,0,0.75;
%     0.75,0.75,0;
%     0,0,.5;
%     0,0.5,0;
%     0,0.5,0.5;
%     0.5,0,0;
%     0.5,0,0.5;
%     0.5,0.5,0;];
% surface([x;x],[y;y],[z;z],[col;col],...
%         'facecol','no',...
%         'edgecol','interp',...
%         'linew',1)
%     colormap(map)
% %     datetick('x','yyyy-mm-dd HH:MM:SS')
% 
% 
