%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: I:\My Drive\Product\Data analysis\Analogue devices\first test setup outputs\20190307\good_bearing.xlsx
%    Worksheet: Sheet1
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2019/03/07 19:24:10

%% Import the data
[~, ~, raw] = xlsread('I:\My Drive\Product\Data analysis\Analogue devices\first test setup outputs\20190307\good_bearing.xlsx','Sheet1','A2:C129');

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
index_good = data(:,1);
frequency_good = data(:,2);
amplitude_good = data(:,3);

%% Import the data
[~, ~, raw] = xlsread('I:\My Drive\Product\Data analysis\Analogue devices\first test setup outputs\20190307\damaged_bearing.xlsx','Sheet1','A2:C129');

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
index_damaged = data(:,1);
frequency_damaged = data(:,2);
amplitude_damaged = data(:,3);

%% Clear temporary variables
clearvars data raw;