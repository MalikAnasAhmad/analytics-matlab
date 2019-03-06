clear 
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')

figure(37),
clf
subplot(2,1,1),
hold on
plot(time,TemperaturExzenterlagerlinks)
plot(time,BetriebsartAutomatik*(max(TemperaturExzenterlagerlinks)/2),'Color','k')
hold off
title('[0:0] Temperatur Exzenterlager links [bearing temperature eccentric shaft left]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(TemperaturExzenterlagerlinks))
plot(time,BetriebsartAutomatik*1*(max(diff(TemperaturExzenterlagerlinks))/2)-2.5,'Color','k')
hold off
title('[0:0] Derrivative of Temperatur Exzenterlager links [derrivate of bearing temperature eccentric shaft left]')

negSlopeLocation = find(diff(TemperaturExzenterlagerlinks)<0);
setUpLocation = find(BetriebsartAutomatik(2:end));
commonLocation = intersect(negSlopeLocation,setUpLocation);

commonLocation_diff = (diff(commonLocation)==1);

clear Limits
Limits = [];
if commonLocation_diff(1)==1
    Limits =[1 Limits];
end
if commonLocation_diff(end)==1
    Limits =[Limits numel(commonLocation_diff)];
end

Limits = [Limits find(commonLocation_diff==0)];
max(diff(Limits))