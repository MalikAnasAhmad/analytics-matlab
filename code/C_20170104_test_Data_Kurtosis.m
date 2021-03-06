Read_Pseudo_201612281400
Data_test = Pseudo_Value;
Data_Labels = Pseudo_Labels;

%% Spike
Data_test((100*20)+25) = Data_test((100*20)+25)*1.5;
Data_test((100*20)+26) = Data_test((100*20)+26)*1.6;
Data_test((100*20)+27) = Data_test((100*20)+27)*1.7;
Data_test((100*20)+28) = Data_test((100*20)+28)*1.5;

Data_Labels((100*20)+25 : (100*20)+28) = -1;


Data_test((100*20)+225) = Data_test((100*20)+25)*1.5;
Data_test((100*20)+226) = Data_test((100*20)+26)*1.6;
Data_test((100*20)+227) = Data_test((100*20)+27)*1.7;
Data_test((100*20)+228) = Data_test((100*20)+28)*1.5;

Data_Labels((100*20)+225 : (100*20)+228) = -1;

%% Random up Scaled Oscillation
Data_test(1050:1250) = Data_test(1050:1250).*rand(size(Data_test(1050:1250))).*1.25;
Data_test(1543:1876) = Data_test(1543:1876).*rand(size(Data_test(1543:1876))).*1.25;

Data_Labels([1050:1250 1543:1876]) = -2;

%% Random up Scaled periodic Oscillation
n=0:6:3600;

Data_test(2945:2945+numel(n)-1) = Data_test(2945:2945+numel(n)-1) + (75 .* sind(n)).';
Data_test(4945:4945+numel(n)-1) = Data_test(4945:4945+numel(n)-1) + (75 .* sind(n)).';

Data_Labels(2945:2945+numel(n)-1) = -3;
Data_Labels(4945:4945+numel(n)-1) = -4;

%% Lograthmic scaling of Oscillation at one side for Kurtosis
% n=0:6:3600;
% 
% Data_test(2945:2945+numel(n)-1) = Data_test(2945:2945+numel(n)-1) + (75 .* sind(n)).';
% Data_test(4945:4945+numel(n)-1) = Data_test(4945:4945+numel(n)-1) + (75 .* sind(n)).';
% 
% Data_Labels([2945:2945+numel(n)-1 4945:4945+numel(n)-1]) = -3;

%% Lograthmic scaling of Oscillation at one side for Skewness
Data_Manipulation = Data_test;
uperDeviationCut = 7.5;
lowerDeviationCut = 5;


% Data_test(find(Data_test(1050-250:1050-1) < mean(Data_test(1050-250:1050-1)))+(1050-250-1)) = Data_test(find(Data_test(1050-250:1050-1) < mean(Data_test(1050-250:1050-1)))+(1050-250-1)) - 50;
moreThanMean = numel(...
                    Data_Manipulation(...
                        find(...
                            Data_Manipulation(1050-250:1050-1)...
                                > ...
                            mean(...
                                Data_Manipulation(1050-250:1050-1)...
                                )...
                            )...
                        +...
                        (1050-250-1)...
                    )...
                );
moreThanMeanPlusFactor = numel(...
                    Data_Manipulation(...
                        find(...
                            Data_Manipulation(1050-250:1050-1)...
                                > ...
                            (...
                                mean(...
                                    Data_Manipulation(1050-250:1050-1)...
                                    )...
                                +...
                                (uperDeviationCut)...
                            )...
                        )...
                        +...
                        (1050-250-1)...
                    )...
                );
lessThanMean = numel(...
                    Data_Manipulation(...
                        find(...
                            Data_Manipulation(1050-250:1050-1)...
                                < ...
                            mean(...
                                Data_Manipulation(1050-250:1050-1)...
                                )...
                            )...
                        +...
                        (1050-250-1)...
                    )...
                );
lessThanMeanMinusFactor = numel(...
                    Data_Manipulation(...
                        find(...
                            Data_Manipulation(1050-250:1050-1)...
                                < ...
                            (...
                                mean(...
                                    Data_Manipulation(1050-250:1050-1)...
                                    )...
                                -...
                                (lowerDeviationCut)...
                            )...
                        )...
                        +...
                        (1050-250-1)...
                    )...
                );
equalToMean = numel(Data_Manipulation(find(Data_Manipulation(1050-250:1050-1) == mean(Data_Manipulation(1050-250:1050-1)))+(1050-250-1)));

Scaling_FactorLower = (2.*(1:lessThanMeanMinusFactor)+3)';
% Scaling_FactorLower = log(1:lessThanMeanMinusFactor)'.*20;
% Scaling_FactorLower = ((-exp(1:lessThanMeanMinusFactor) + abs(min(-exp(1:lessThanMeanMinusFactor)))) * .000000000000000000000000005)';
Scaling_FactorUper = Scaling_FactorLower(1:round(lessThanMeanMinusFactor/moreThanMeanPlusFactor):lessThanMeanMinusFactor).*0.25;

Data_Manipulation(find(Data_test(1050-250:1050-1) > (mean(Data_test(1050-250:1050-1)) + (uperDeviationCut))) + (1050-250-1)) = ...
    Data_Manipulation(find(Data_test(1050-250:1050-1) > (mean(Data_test(1050-250:1050-1)) + (uperDeviationCut))) + (1050-250-1)) + Scaling_FactorUper;

Data_Manipulation(find(Data_test(1050-250:1050-1) < (mean(Data_test(1050-250:1050-1)) - (lowerDeviationCut))) + (1050-250-1)) = ...
    Data_Manipulation(find(Data_test(1050-250:1050-1) < (mean(Data_test(1050-250:1050-1)) - (lowerDeviationCut))) + (1050-250-1)) - Scaling_FactorLower;


Data_Labels(1050-250:1050-1) = -5;

Data = Data_Manipulation;
Labels = Data_Labels;
clear Data_test Data_Labels

clearvars -except Data Labels