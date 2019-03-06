A = xlsread('C:\Users\MalikAnasAhmad\Desktop\Pseudo_Data.xls');
Data = A(:,1);
Labels = A(:,2);
figure(1);
% H_F = gcf;
H=msgbox('Procesing...........');
hold on
for i=1:numel(Data)
    if Labels(i)==0
        plot(i,Data(i),'b')
    else
        plot(i,Data(i),'r')
        i
    end
    hold on
end
hold off
delete(H)