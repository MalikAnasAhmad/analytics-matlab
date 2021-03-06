clear 
load('D:\Connectavo\Google Drive\connectavo\Product\Data analysis\Dataset\Hirschvogel\Data files\Cleaned Hirschvogel_201708311500_LabeledInEng.mat')
figure(30)
subplot(4,1,1)
plot(time,BetriebsartAUS)
ylim([0 2])
title('[1.1]	Betriebsart AUS	[OFF]')
subplot(4,1,2)
plot(time,BetriebsartEinzelhub)
ylim([0 2])
title('[1.2]	Betriebsart Einzelhub	[Single Stroke]')
subplot(4,1,3)
plot(time,BetriebsartEinrichten)
ylim([0 2])
title('[1.3]	Betriebsart Einrichten	[Setup]')
subplot(4,1,4)
plot(time,BetriebsartAutomatik)
ylim([0 2])
title('[1.4]	Betriebsart Automatik	[Automatic (Normal)]')
figure(31)
subplot(4,1,1)
plot(time,BetriebsartWerkzeugwechsel)
ylim([0 2])
title('[1.5]	Betriebsart Werkzeugwechsel	[Tool replacement]')
subplot(4,1,2)
plot(time,BetriebsartWerkzeughalterwechsel)
ylim([0 2])
title('[1.6]	Betriebsart Werkzeughalterwechsel	[Tool holder replacement]')
subplot(4,1,3)
plot(time,BetriebsartAutomatikTestbetrieb)
ylim([0 2])
title('[1.7]	Betriebsart Automatik Testbetrieb	[Automatic Test]')
