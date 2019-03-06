for index = 1:numel(ltemperaturKhllHKBRcklauf)
    index
%%checkig ',' and making sure that number 44 is not there to dodge us by
%%checking the length
    if(numel((find(ltemperaturKhllHKBRcklauf{index,1}==','))) && numel(ltemperaturKhllHKBRcklauf{index,1})~=1)
%% replacing ',' with '.' to make it readable fro MATLAB
        ltemperaturKhllHKBRcklauf{index,1}(find(ltemperaturKhllHKBRcklauf{index,1}==',')) = '.';
    else
%% placing '.0' at the end of numbers inorder to makethe length same
        ltemperaturKhllHKBRcklauf{index,1} = [num2str(ltemperaturKhllHKBRcklauf{index,1}) '.0'];
    end
end

%% converting it to strings and then to double

ltemperaturKhllHKBRcklauf = str2num(char(ltemperaturKhllHKBRcklauf));
clear index