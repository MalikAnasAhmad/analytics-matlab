function [DataWindow] = NonOverlapWindow(Data,windowSize)
DataWindow = reshape(Data(1:floor(numel(Data)/windowSize)*windowSize),windowSize,floor(numel(Data)/windowSize))';