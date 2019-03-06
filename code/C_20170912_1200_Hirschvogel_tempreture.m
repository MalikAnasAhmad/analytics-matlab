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
MaximumConsistentdecrement4_00 = max(diff(Limits))

figure(38),
clf
subplot(2,1,1),
hold on
plot(time,TemperaturExzenterlagerrechts)
plot(time,BetriebsartAutomatik*(max(TemperaturExzenterlagerrechts)/2),'Color','k')
hold off
title('[0:1] Temperatur Exzenterlager rechts [bearing temperature eccentric shaft right]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(TemperaturExzenterlagerrechts))
plot(time,BetriebsartAutomatik*1*(max(diff(TemperaturExzenterlagerrechts))/2)-2.5,'Color','k')
hold off
title('[0:1] Derrivative of Temperatur Exzenterlager rechts [derrivate of bearing temperature eccentric shaft right]')

negSlopeLocation = find(diff(TemperaturExzenterlagerrechts)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_01 = max(diff(Limits))

figure(39),
clf
subplot(2,1,1),
hold on
plot(time,TemperaturDruckstangenlagerlinks)
plot(time,BetriebsartAutomatik*(max(TemperaturDruckstangenlagerlinks)/2),'Color','k')
hold off
title('[0:2] Temperatur Druckstangenlager links [bearing temperature push rod left]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(TemperaturDruckstangenlagerlinks))
plot(time,BetriebsartAutomatik*1*(max(diff(TemperaturDruckstangenlagerlinks))/2)-2.5,'Color','k')
hold off
title('[0:2] Derrivative of Temperatur Druckstangenlager links [derrivate of bearing temperature push rod left]')

negSlopeLocation = find(diff(TemperaturDruckstangenlagerlinks)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_02 = max(diff(Limits))

figure(40),
clf
subplot(2,1,1),
hold on
plot(time,TemperaturDruckstangenlagerrechts)
plot(time,BetriebsartAutomatik*(max(TemperaturDruckstangenlagerrechts)/2),'Color','k')
hold off
title('[0:3] Temperatur Druckstangenlager rechts [bearing temperature push rod right]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(TemperaturDruckstangenlagerrechts))
plot(time,BetriebsartAutomatik*1*(max(diff(TemperaturDruckstangenlagerrechts))/2)-2.5,'Color','k')
hold off
title('[0:3] Derrivative of Temperatur Druckstangenlager rechts [derrivate of bearing temperature push rod right]')

negSlopeLocation = find(diff(TemperaturDruckstangenlagerrechts)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_03 = max(diff(Limits))

figure(41),
clf
subplot(2,1,1),
hold on
plot(time,TemperaturStnderlagerlinks)
plot(time,BetriebsartAutomatik*(max(TemperaturStnderlagerlinks)/2),'Color','k')
hold off
title('[0:4] Temperatur St?nderlager links [bearing temperature frame left]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(TemperaturStnderlagerlinks))
plot(time,BetriebsartAutomatik*1*(max(diff(TemperaturStnderlagerlinks))/2)-2.5,'Color','k')
hold off
title('[0:4] Derrivative of Temperatur St?nderlager links [derrivate of bearing temperature frame left]')

negSlopeLocation = find(diff(TemperaturStnderlagerlinks)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_04 = max(diff(Limits))

figure(42),
clf
subplot(2,1,1),
hold on
plot(time,TemperaturStnderlagerrechts)
plot(time,BetriebsartAutomatik*(max(TemperaturStnderlagerrechts)/2),'Color','k')
hold off
title('[0:5] Temperatur St?nderlager rechts [bearing temperature frame right]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(TemperaturStnderlagerrechts))
plot(time,BetriebsartAutomatik*1*(max(diff(TemperaturStnderlagerrechts))/2)-2.5,'Color','k')
hold off
title('[0:5] Derrivative of Temperatur St?nderlager rechts [derrivate of bearing temperature frame right]')

negSlopeLocation = find(diff(TemperaturStnderlagerrechts)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_05 = max(diff(Limits))

figure(43),
clf
subplot(2,1,1),
hold on
plot(time,ltemperaturHLPDAggregatTischauswerfer)
plot(time,BetriebsartAutomatik*(max(ltemperaturHLPDAggregatTischauswerfer)/2),'Color','k')
hold off
title('[0:6] ?ltemperatur HLPD Aggregat [oil temperature table ejector hydraulic unit]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(ltemperaturHLPDAggregatTischauswerfer))
plot(time,BetriebsartAutomatik*1*(max(diff(ltemperaturHLPDAggregatTischauswerfer))/2)-2.5,'Color','k')
hold off
title('[0:6] Derrivative of ?ltemperatur HLPD Aggregat [derrivate of oil temperature table ejector hydraulic unit]')

negSlopeLocation = find(diff(ltemperaturHLPDAggregatTischauswerfer)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_06 = max(diff(Limits))

figure(44),
clf
subplot(2,1,1),
hold on
plot(time,ltemperaturATFAggregatHKB)
plot(time,BetriebsartAutomatik*(max(ltemperaturATFAggregatHKB)/2),'Color','k')
hold off
title('[0:7] ?ltemperatur ATF Aggregat HKB [oil temperature clutch - brake hydraulic unit]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(ltemperaturATFAggregatHKB))
plot(time,BetriebsartAutomatik*1*(max(diff(ltemperaturATFAggregatHKB))/2)-2.5,'Color','k')
hold off
title('[0:7] Derrivative of ?ltemperatur ATF Aggregat HKB [derrivate of oil temperature clutch - brake hydraulic unit]')

negSlopeLocation = find(diff(ltemperaturATFAggregatHKB)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_07 = max(diff(Limits))

figure(45),
clf
subplot(2,1,1),
hold on
plot(time,ltemperaturHFCAggregatStelausstoer)
plot(time,BetriebsartAutomatik*(max(ltemperaturHFCAggregatStelausstoer)/2),'Color','k')
hold off
title('[0:8] ?ltemperatur HFC Aggregat St??elaussto?er [oil temperature slide ejector hydraulic unit]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(ltemperaturHFCAggregatStelausstoer))
plot(time,BetriebsartAutomatik*1*(max(diff(ltemperaturHFCAggregatStelausstoer))/2)-2.5,'Color','k')
hold off
title('[0:8] Derrivative of ?ltemperatur HFC Aggregat St??elaussto?er [derrivate of oil temperature slide ejector hydraulic unit]')

negSlopeLocation = find(diff(ltemperaturHFCAggregatStelausstoer)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_08 = max(diff(Limits))

figure(46),
clf
subplot(2,1,1),
hold on
plot(time,ltemperaturKhllHKBVorlauf)
plot(time,BetriebsartAutomatik*(max(ltemperaturKhllHKBVorlauf)/2),'Color','k')
hold off
title('[0:9] ?ltemperatur K?hl?l HKB Vorlauf [cooling oil temperature clutch - brake feed line]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(ltemperaturKhllHKBVorlauf))
plot(time,BetriebsartAutomatik*1*(max(diff(ltemperaturKhllHKBVorlauf))/2)-2.5,'Color','k')
hold off
title('[0:9] Derrivative of ?ltemperatur K?hl?l HKB Vorlauf [derrivate of cooling oil temperature clutch - brake feed line]')

negSlopeLocation = find(diff(ltemperaturKhllHKBVorlauf)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_09 = max(diff(Limits))

figure(47),
clf
subplot(2,1,1),
hold on
plot(time,ltemperaturKhllHKBRcklauf)
plot(time,BetriebsartAutomatik*(max(ltemperaturKhllHKBRcklauf)/2),'Color','k')
hold off
title('[0:10] ?ltemperatur K?hl?l HKB R?cklauf [cooling oil temperature clutch - brake return line]')
subplot(2,1,2),
hold on
plot(time(2:end),diff(ltemperaturKhllHKBRcklauf))
plot(time,BetriebsartAutomatik*1*(max(diff(ltemperaturKhllHKBRcklauf))/2)-2.5,'Color','k')
hold off
title('[0:10] Derrivative of ?ltemperatur K?hl?l HKB R?cklauf [derrivate of cooling oil temperature clutch - brake return line]')

negSlopeLocation = find(diff(ltemperaturKhllHKBRcklauf)<0);
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

Limits = [Limits find(commonLocation_diff==0)'];
MaximumConsistentdecrement4_10 = max(diff(Limits))