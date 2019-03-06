clc

char Fehler;
char Fehler_total_unique;
Fehler_Location = [];
count=0;

for i=1:1:length(Text)
check = findstr(char(Text(i,:)),'Fehler');
if (check)
    count=1+count;
    check=0;
    Fehler_Location(count) = i;
%     Fehler (count,:) = Text(i,:);
end
end

Fehler = Text(Fehler_Location,:);
Fehler_U = unique(Text(Fehler_Location,:));

count


Fehler_plot = zeros(length(Text),1);
Fehler_plot(Fehler_Location) = 1;

monthcount=2;
monthLocation=1;
for i=1:1:length(Gekommen)
    if(cell2mat(strfind(Gekommen(i),[mat2str(monthcount) '.2015'])))
        eval(['Text_' mat2str(monthcount-1) '= Text(monthLocation:i-1,:);']);
        eval(['figure(' mat2str(monthcount-1) ')'])
        plot(Fehler_plot(monthLocation:i-1));
        monthLocation=i;
        monthcount=1+monthcount;
    end
end
eval(['figure(' mat2str(monthcount-1) ')'])
plot(Fehler_plot(monthLocation:i));
eval(['Text_' mat2str(monthcount-1) '= Text(monthLocation:end,:);']);

count=0;
Text_Fehler = Text(Fehler_Location);
% Text_test = Text(Fehler_Location);
% Text_test_1 = Text_test;
Text_Fehler_I = Text_Fehler;
for i=1:1:length(Fehler_U)%103
    for j=1:1:length(Text_Fehler)%15671
        if(strcmp(char(Text_Fehler(j,:)),char(Fehler_U(i,:))))
            Text_Fehler_I(j,:) = cellstr(mat2str(i));
            count = count+1
        end
    end
end
Text_Fehler_I = str2num(char(Text_Fehler_I));
Fehler_hist = hist(Text_Fehler_I,length(Fehler_U));
days_Month = [0,31,59,90,120,151,181,212,243,273,304,334,364];
Fehler_week = zeros(53,1);

for i=1:1:length(Fehler_Location)

    timestamp = char(Gekommen(Fehler_Location(1,i)));
    Fehler_week(ceil((str2num(timestamp(1,1:2))+days_Month(1,str2num(timestamp(1,4:5))))/7),1) = Fehler_week(ceil((str2num(timestamp(1,1:2))+days_Month(1,str2num(timestamp(1,4:5))))/7),1) + 1;
    
end

count=0;
Fehler_Name_week48 = Fehler(12108+1:12108+1827);
Fehler_Index_week48 = zeros(length(Fehler_Name_week48),1);

for i=1:1:length(Fehler_total_unique)%100
    for j=1:1:length(Fehler_Name_week48)%14125
        if(strcmp(char(Fehler_Name_week48(j,:)),char(Fehler_total_unique(i,:))))
            Fehler_Index_week48(j,:) = i;
            count = count+1
        end
    end
end