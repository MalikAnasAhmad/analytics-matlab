clear 
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')

% commonLocation_diff = (diff(commonLocation)==1);
% 
% clear Limits
% Limits = [];
% if commonLocation_diff(1)==1
%     Limits =[1 Limits];
% end
% if commonLocation_diff(end)==1
%     Limits =[Limits numel(commonLocation_diff)];
% end
% 
% Limits = [Limits find(commonLocation_diff==0)];
% MaximumConsistentdecrement4_00 = max(diff(Limits))

%%
BetriebsartAutomatik

clear Limits
Limits = [];

if commonLocation_diff(1)==1
    Limits =[1 Limits];
end
if commonLocation_diff(end)==1
    Limits =[Limits numel(commonLocation_diff)];
end