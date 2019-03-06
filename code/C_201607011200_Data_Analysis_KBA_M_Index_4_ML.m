% clc
% 
count=0;
% AlarmID_I = zeros(length(AlarmID),1);
% AlarmID_U = unique(AlarmID);
% 
% for i=1:1:length(AlarmID_U)%100
%     for j=1:1:length(AlarmID)%14125
%         if(strcmp(char(AlarmID(j,:)),char(AlarmID_U(i,:))))
%               AlarmID_I(j) = i;
%             count = count+1
%         end
%     end
% end
% 
% 
% BetrKennzeichen_I = zeros(length(BetrKennzeichen),1);
% BetrKennzeichen_U = unique(BetrKennzeichen);
% 
% for i=1:1:length(BetrKennzeichen_U)%100
%     for j=1:1:length(BetrKennzeichen)%14125
%         if(strcmp(char(BetrKennzeichen(j,:)),char(BetrKennzeichen_U(i,:))))
%             BetrKennzeichen_I(j) = i;
%             count = count+1
%         end
%     end
% end

% Kommentar_I = zeros(length(Kommentar),1);
% Kommentar_U = unique(Kommentar);
% 
% for i=1:1:length(Kommentar_U)%100
%     for j=1:1:length(Kommentar)%14125
%         if(strcmp(char(Kommentar(j,:)),char(Kommentar_U(i,:))))
%             Kommentar_I(j) = i;
%             count = count+1
%         end
%     end
% end

% Ort_I = zeros(length(Ort),1);
% Ort_U = unique(Ort);
% 
% for i=1:1:length(Ort_U)%100
%     for j=1:1:length(Ort)%14125
%         if(strcmp(char(Ort(j,:)),char(Ort_U(i,:))))
%             Ort_I(j) = i;
%             count = count+1
%         end
%     end
% end

% Text_I = zeros(length(Text),1);
% Text_U = unique(Text);
% 
% for i=1:1:length(Text_U)%100
%     for j=1:1:length(Text)%14125
%         if(strcmp(char(Text(j,:)),char(Text_U(i,:))))
%             Text_I(j) = i;
%             count = count+1
%         end
%     end
% end

TextID_I = zeros(length(TextID),1);
TextID_U = unique(TextID);

for i=1:1:length(TextID_U)%100
    for j=1:1:length(TextID)%14125
        if(strcmp(char(TextID(j,:)),char(TextID_U(i,:))))
            TextID_I(j) = i;
            count = count+1
        end
    end
end

Zusatzinfo8_I = zeros(length(Zusatzinfo8),1);
Zusatzinfo8_U = unique(Zusatzinfo8);

for i=1:1:length(Zusatzinfo8_U)%100
    for j=1:1:length(Zusatzinfo8)%14125
        if(strcmp(char(Zusatzinfo8(j,:)),char(Zusatzinfo8_U(i,:))))
            Zusatzinfo8_I(j) = i;
            count = count+1
        end
    end
end