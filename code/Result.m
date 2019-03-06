function [percentErrors, error] = Result(OriginalLabels,OutputLabels)
error = gsubtract(OriginalLabels,OutputLabels);
% OriginalLabelsind = vec2ind(OriginalLabels);
% OutputLabelsind = vec2ind(OutputLabels);
% percentErrors = sum(OriginalLabelsind ~= OutputLabelsind)/numel(OriginalLabelsind);
percentErrors = (sum(abs(error))/numel(error))*100;