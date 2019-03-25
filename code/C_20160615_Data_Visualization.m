load('F:\Anas\Google Drive\Connectavo\Data_analysis-2016-06-14\Data analysis\Sample dataset\dyn_v_f_00053_n_2120_d_7_t_1_s_2_151022.mat')
plot(data.ts,'y'),%legend('ts')
hold on
plot(data.Bx,'m'),%legend('Bx')
plot(data.By,'c'),%legend('By')
plot(data.Bz,'r'),%legend('Bz')
plot(data.Fz,'g'),%legend('Fz')
plot(data.M,'b')
legend('ts','Bx','By','Bz','Fz','M')
hold off