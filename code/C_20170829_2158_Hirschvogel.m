for index = 1:numel(TischauswerferStufe3ISTPosition)
    index
    if (ischar(TischauswerferStufe3ISTPosition{index,1}))
        TischauswerferStufe3ISTPosition{index,1}(find(TischauswerferStufe3ISTPosition{index,1}==',')) = '.';
        TischauswerferStufe3ISTPosition{index,1} = str2num(char(TischauswerferStufe3ISTPosition{index,1}));
    end
end
%% converting it to strings and then to double

TischauswerferStufe3ISTPosition = cell2mat(TischauswerferStufe3ISTPosition);
clear index