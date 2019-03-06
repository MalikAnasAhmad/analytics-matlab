% % a=Gekommen(1:1000);
% % b=Zeitstempel(1:1000);
% Zeitstempel_temp = Zeitstempel;
% for i=6975:length(Gekommen)
% % for i=1:length(Gekommen)
%     matchNo=1;
%     i
%     for j=1:length(Zeitstempel)
%         if (strfind(char(Gekommen(i)),char(Zeitstempel_temp(j))))
%             index(i,matchNo) = j;
%             matchNo = matchNo+1;
%             Zeitstempel_temp(j)=cellstr('0');
%         end
%     end
% end

a=1
Index_Z = [(mat2cell((1:numel(Zeitstempel))',ones(1,numel(Zeitstempel)))) Zeitstempel];
a=2
Index_G = [(mat2cell((1:numel(Gekommen))',ones(1,numel(Gekommen)))) Gekommen];
a=3
Index_Z = cell2table(Index_Z,'VariableNames',{'Index_Z' 'TimeStamp'});
a=4
Index_G = cell2table(Index_G,'VariableNames',{'Index_G' 'TimeStamp'});
a=5
Relation_L_M = outerjoin(Index_Z,Index_G,'Keys','TimeStamp');
a=6