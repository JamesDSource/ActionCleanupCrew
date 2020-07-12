grade_y = - 32;
grade_spd = 2;

letter_scale = 0;
letter_spd = 0.05;

letter_background_scale = 0;
letter_background_spd = 0.1;

if(global.game_score.total >= 99) letter_index = 0;
else if(global.game_score.total >= 86) letter_index = 1;
else if(global.game_score.total >= 74) letter_index = 2;
else if(global.game_score.total >= 62) letter_index = 3;
else if(global.game_score.total >= 50) letter_index = 4;
else letter_index = 5;