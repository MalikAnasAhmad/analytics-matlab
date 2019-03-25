% load('201608091500_Albrecht Szeitszam - 60905500_M_2015_Top_Six_Error.mat')

%%Istwert4
clc
clear temp temp_hist;
temp(:,:) = E_10_History(:,15,:);
[temp_hist,] = histcounts(temp(find(~isnan(temp(:)))),[0:1:max(Istwert4)]);
% temp_hist = hist(temp(find(~isnan(temp(:)))),max(Zusatzinfo7));

temp_hist1 = temp_hist;

if(numel(find(temp_hist1==max(temp_hist1)))<4)
    Most = find(temp_hist1==max(temp_hist1));
    temp_hist1(Most) = 0;
    if(numel(find(temp_hist1==max(temp_hist1)))<4)
        Most = [Most find(temp_hist1==max(temp_hist1))];
        temp_hist1(Most) = 0;
        if(numel(find(temp_hist1==max(temp_hist1)))<4)
            Most = [Most find(temp_hist1==max(temp_hist1))];
        end
    end
end

% if (min(temp(:))==0)
%     Most_Z7 = Most_Z7-1;
% end

Percentage_Error = (temp_hist(Most)./numel(temp(:))) * 100;%+1 is done inorder to position it rightly

Percentage_Total = zeros(size(Most));

for i=1:length(Percentage_Total)
    Percentage_Total(i) = (numel(find(Istwert4==(Most(i)-1)))/numel(Istwert4))*100;
end

for i=1:length(Most)
    MS = Most(i)-1
    PE = Percentage_Error(i)
    PT = Percentage_Total(i)
end

Z_mean = mean(temp(:),'omitnan')
Z_var = var(temp(:),'omitnan')
Z_std = std(temp(:),'omitnan')