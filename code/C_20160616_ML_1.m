clear
clc
load('F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\Betriebsschwingungsmessung Fedom_Flexibles Spannsystem\dyn_v_f_00053_n_2120_d_7_t_1_s_2_151022.mat')
figure(1)
subplot(6,1,1)
plot(data.ts,'y'),%legend('ts')
hold on
plot(data.Bx,'m'),%legend('Bx')
plot(data.By,'c'),%legend('By')
plot(data.Bz,'r'),%legend('Bz')
plot(data.Fz,'g'),%legend('Fz')
plot(data.M,'b')
legend('ts','Bx','By','Bz','Fz','M')
hold off
xlim([0 60000])
clear

load('F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\Betriebsschwingungsmessung Fedom_Flexibles Spannsystem\dyn_v_f_00053_n_2120_d_7_t_2_s_2_151022.mat')
subplot(6,1,2)
plot(data.ts,'y'),%legend('ts')
hold on
plot(data.Bx,'m'),%legend('Bx')
plot(data.By,'c'),%legend('By')
plot(data.Bz,'r'),%legend('Bz')
plot(data.Fz,'g'),%legend('Fz')
plot(data.M,'b')
% legend('ts','Bx','By','Bz','Fz','M')
hold off
xlim([0 60000])
clear


% figure(3)
% % ds=500;
% % plot(1/ds:1/ds:length(data.Fz)/ds,data.Fz,'g')
% % hold on
% % plot(data.Fz(1:ds:end),'b')
% % hold off
% 
% ds=50;
% plot(1/ds:1/ds:length(data.Bx)/ds,data.Bx,'g')
% hold on
% plot(data.Bx(1:ds:end),'b')
% hold off

load('F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\Betriebsschwingungsmessung Fedom_Flexibles Spannsystem\dyn_v_f_00053_n_2120_d_7_t_3_s_2_151022.mat')
subplot(6,1,3)
plot(data.ts,'y'),%legend('ts')
hold on
plot(data.Bx,'m'),%legend('Bx')
plot(data.By,'c'),%legend('By')
plot(data.Bz,'r'),%legend('Bz')
plot(data.Fz,'g'),%legend('Fz')
plot(data.M,'b')
% legend('ts','Bx','By','Bz','Fz','M')
hold off
xlim([0 60000])
clear

load('F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\Betriebsschwingungsmessung Fedom_Flexibles Spannsystem\dyn_v_f_0003175_n_1270_d_7_t_1_s_1_151022.mat')
subplot(6,1,4)
plot(data.ts,'y'),%legend('ts')
hold on
plot(data.Bx,'m'),%legend('Bx')
plot(data.By,'c'),%legend('By')
plot(data.Bz,'r'),%legend('Bz')
plot(data.Fz,'g'),%legend('Fz')
plot(data.M,'b')
% legend('ts','Bx','By','Bz','Fz','M')
hold off
xlim([0 60000])
clear

load('F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\Betriebsschwingungsmessung Fedom_Flexibles Spannsystem\dyn_v_f_0003175_n_1270_d_7_t_2_s_1_151022.mat')
subplot(6,1,5)
plot(data.ts,'y'),%legend('ts')
hold on
plot(data.Bx,'m'),%legend('Bx')
plot(data.By,'c'),%legend('By')
plot(data.Bz,'r'),%legend('Bz')
plot(data.Fz,'g'),%legend('Fz')
plot(data.M,'b')
% legend('ts','Bx','By','Bz','Fz','M')
hold off
xlim([0 60000])
clear

load('F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\Betriebsschwingungsmessung Fedom_Flexibles Spannsystem\dyn_v_f_0003175_n_1270_d_7_t_3_s_1_151022.mat')
subplot(6,1,6)
plot(data.ts,'y'),%legend('ts')
hold on
plot(data.Bx,'m'),%legend('Bx')
plot(data.By,'c'),%legend('By')
plot(data.Bz,'r'),%legend('Bz')
plot(data.Fz,'g'),%legend('Fz')
plot(data.M,'b')
% legend('ts','Bx','By','Bz','Fz','M')
hold off
xlim([0 60000])