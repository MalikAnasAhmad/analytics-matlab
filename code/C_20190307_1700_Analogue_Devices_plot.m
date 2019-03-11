figure(1),
plot (index_damaged,amplitude_damaged, 'r')
hold on
plot (index_good,amplitude_good,'b')
hold off

figure(2),
stem(frequency_damaged,amplitude_damaged, 'r')
hold on
stem(frequency_good,amplitude_good,'b')
hold off
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
title('stem graph of all of the damaged (in red) vs good (in blue) bearing vibration data for amplitude vs frequency')

figure(3),
subplot(6,1,1)
bar (frequency_damaged(1:22),amplitude_damaged(1:22), 'r')
hold on
bar (frequency_good(1:22),amplitude_good(1:22),'b')
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
hold off
title('first chunks of the damaged (in red) vs good (in blue) data for amplitude vs frequency')
subplot(6,1,2)
bar (frequency_damaged(23:43),amplitude_damaged(23:43), 'r')
hold on
bar (frequency_good(23:43),amplitude_good(23:43),'b')
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
hold off
title('second chunks of the damaged (in red) vs good (in blue) data for amplitude vs frequency')
subplot(6,1,3)
bar (frequency_damaged(44:65),amplitude_damaged(44:65), 'r')
hold on
bar (frequency_good(44:65),amplitude_good(44:65),'b')
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
hold off
title('third chunks of the damaged (in red) vs good (in blue) data for amplitude vs frequency')
subplot(6,1,4)
bar (frequency_damaged(66:86),amplitude_damaged(66:86), 'r')
hold on
bar(frequency_good(66:86),amplitude_good(66:86),'b')
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
hold off
title('fourth chunks of the damaged (in red) vs good (in blue) data for amplitude vs frequency')
subplot(6,1,5)
bar (frequency_damaged(87:107),amplitude_damaged(87:107), 'r')
hold on
bar (frequency_good(87:107),amplitude_good(87:107),'b')
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
hold off
title('fifth chunks of the damaged (in red) vs good (in blue) data for amplitude vs frequency')
subplot(6,1,6)
bar (frequency_damaged(108:128),amplitude_damaged(108:128), 'r')
hold on
bar (frequency_good(108:128),amplitude_good(108:128),'b')
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
hold off
title('sixth chunks of the damaged (in red) vs good (in blue) data for amplitude vs frequency')

figure(4),
subplot(2,1,1)
stem(frequency_damaged(1:64),amplitude_damaged(1:64), 'r')
hold on
stem(frequency_good(1:64),amplitude_good(1:64),'b')
hold off
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
title('stem graph of first half of the damaged (in red) vs good (in blue) bearing vibration data for amplitude vs frequency')
subplot(2,1,2)
stem(frequency_damaged(65:end),amplitude_damaged(65:end), 'r')
hold on
stem(frequency_good(65:end),amplitude_good(65:end),'b')
hold off
ylim([0 0.45])
xlim([0 100])
ylabel('amplitude')
xlabel('frequency(Hz)')
title('stem graph of second half of the damaged (in red) vs good (in blue) bearing vibration data for amplitude vs frequency')

figure(5),
bar(index_good,frequency_good)
ylim([0 100])
xlim([0 250])
ylabel('frequency(Hz)')
xlabel('index')
title('frequency vs index')
