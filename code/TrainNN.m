function [net] = TrainNN(reducedFeature, labels, HiddenLayers,TrainFunction)

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = TrainFunction;  % Scaled conjugate gradient backpropagation.

% Create a Pattern Recognition Network
net = patternnet(HiddenLayers);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Train the Network
[net,~] = train(net,reducedFeature,labels);