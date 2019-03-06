function [DataWindow] = OverlapWindow(Data,windowSize)
DataWindow = Data(hankel(1:windowSize,windowSize:numel(Data)).');