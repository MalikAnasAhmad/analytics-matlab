for index = 1:numel(ltemperaturKhllHKBVorlauf)
    index
%%checkig ',' and making sure that number 44 is not there to dodge us by
%%checking the length
    if(numel((find(ltemperaturKhllHKBVorlauf{index,1}==','))) && numel(ltemperaturKhllHKBVorlauf{index,1})~=1)
%% replacing ',' with '.' to make it readable fro MATLAB
        ltemperaturKhllHKBVorlauf{index,1}(find(ltemperaturKhllHKBVorlauf{index,1}==',')) = '.';
    else
%% placing '.0' at the end of numbers inorder to makethe length same
        ltemperaturKhllHKBVorlauf{index,1} = [num2str(ltemperaturKhllHKBVorlauf{index,1}) '.0'];
    end
end

%% converting it to strings and then to double

ltemperaturKhllHKBVorlauf = str2num(char(ltemperaturKhllHKBVorlauf));
clear index