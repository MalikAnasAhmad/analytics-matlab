figure(1),
plot (frequency_damaged,amplitude_damaged, 'r')
hold on
plot (frequency_good,amplitude_good,'b')
hold off
ylim([0 0.45])
xlim([0 250])
ylabel('amplitude')
xlabel('frequency(Hz)')
title('damaged (in red) vs good (in blue) bearing vibration data for amplitude vs frequency')
legend({'amplitude of damaged bearing','amplitude of good bearing'},'Location','northeast')

figure(2),
stem (frequency_damaged,amplitude_damaged, 'r')
hold on
stem (frequency_good,amplitude_good,'b')
hold off
ylim([0 0.45])
xlim([0 250])
ylabel('amplitude')
xlabel('frequency(Hz)')
title('damaged (in red) vs good (in blue) bearing vibration data for amplitude vs frequency')
legend({'amplitude of damaged bearing','amplitude of good bearing'},'Location','northeast')