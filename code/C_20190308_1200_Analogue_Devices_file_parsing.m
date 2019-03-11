%% Read the file data 
fid = fopen('I:\My Drive\Product\Data analysis\Analogue devices\first test setup outputs\20190307\GoodAndBadBearingFFTExample.txt','rt') ;
%% separating the lines
S = textscan(fid,'%s','delimiter','\n') ;
%% cleaning the frequency_damaged
S_frequency_damaged = S{1,1}(5);
S_frequency_damaged  = strrep(S_frequency_damaged{1,1} , 'AI A-1/Envelope/AmplFFT (', '');
S_frequency_damaged  = strrep(S_frequency_damaged , ' Hz) (g)', '');
S_frequency_damaged  = strrep(S_frequency_damaged , ',', '.');
frequency_damaged = cell2mat(textscan(S_frequency_damaged,'%f','delimiter',';'));
clear S_frequency_damaged
%% cleaning the frequency_damaged
S_amplitude_damaged = char(S{1,1}(8));
amplitude_damaged = cell2mat(textscan(S_amplitude_damaged,'%f','delimiter',';'));
clear S_amplitude_damaged
%% cleaning the frequency_good
S_frequency_good = S{1,1}(5);
S_frequency_good  = strrep(S_frequency_good{1,1} , 'AI A-1/Envelope/AmplFFT (', '');
S_frequency_good  = strrep(S_frequency_good , ' Hz) (g)', '');
S_frequency_good  = strrep(S_frequency_good , ',', '.');
frequency_good = cell2mat(textscan(S_frequency_good,'%f','delimiter',';'));
clear S_frequency_good
%% cleaning the amplitude_good
S_amplitude_good = char(S{1,1}(8));
amplitude_good = cell2mat(textscan(S_amplitude_good,'%f','delimiter',';'));
clear S_amplitude_good S
%% closing the file
fclose(fid);
clear fid ans
%% making a table to be saved in a csv
table_to_be_saved = table(frequency_damaged,amplitude_damaged,frequency_good,amplitude_good);
%% saving the csv
writetable(table_to_be_saved,'I:\My Drive\Product\Data analysis\Analogue devices\first test setup outputs\20190307\GoodAndBadBearingFFTExample.csv');