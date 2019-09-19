function [cell_array_q] = make_quantize_index_for_cell_vector(cell_array)

cell_array_char_with_space = num2str(int16(char(unique(cell_array))));
% size(cell_array_char_with_space,1)
% size(ones(size(cell_array_char_with_space,1),2))
% size(' '.*ones(size(cell_array_char_with_space,1),2))
cell_array_char_with_space = [' '*ones(size(cell_array_char_with_space,1),2) cell_array_char_with_space];
% size(cell_array_char_with_space);
number_of_rows = size(cell_array_char_with_space,1);
cell_array_char_with_space = cell_array_char_with_space';

cell_array_char_without_extra_space = strrep(cell_array_char_with_space(:)','    ','00');
% size(cell_array_char_without_extra_space)
% size(cell_array_char_without_extra_space)
cell_array_char_without_extra_space = strrep(cell_array_char_without_extra_space(:)','   ','0');
% size(cell_array_char_without_extra_space)

cell_array_char_without_extra_space = strrep(cell_array_char_without_extra_space(:)',' ','');
% size(cell_array_char_without_extra_space)

cell_array_char_without_extra_space = strrep(cell_array_char_without_extra_space(:)','  ',' ');
% size(cell_array_char_without_extra_space)
cell_array_q = reshape(cell_array_char_without_extra_space, size(cell_array_char_without_extra_space,2)/number_of_rows,number_of_rows)';
% size(cell_array_q)