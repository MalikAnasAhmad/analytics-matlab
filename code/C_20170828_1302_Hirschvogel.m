% %% Converting time cell into string
% 
% time = char(time);

%% replacing '.' with '-' to make it readable fro MATLAB

for indexTime = 1:size(time,1)
    indexTime
    time(indexTime,find(time(indexTime,1:10)=='.')) = '-';
%     if(numel((find(time{index,1}==','))))
%         time{index,1}(find(time{index,1}(1:10)==',')) = '.';
%     end

end

%% removing the decimals after second and converting them to datetime format

time = datetime(time(:,1:19),'InputFormat','dd-MM-yyyy HH:mm:ss');