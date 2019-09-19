max_score = 500;
max_tag_match = 50;
final_score = zeros(max_tag_match,max_score);
for score =1 : max_score
for tag_match = 1: max_tag_match
final_score(tag_match,score) = score*(1+(tag_match*0.075/log10(score)));
end
end