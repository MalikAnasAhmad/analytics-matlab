function [hash_map_container] = make_hash_map_container_for_vector_cell(cell)

key_set = unique(cell);
value_set = [1:length(key_set)];
hash_map_container = containers.Map(key_set,value_set);