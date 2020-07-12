grade_y = - 32;
grade_spd = 2;

letter_scale = 0;
letter_spd = 0.05;

letter_background_scale = 0;
letter_background_spd = 0.1;

if(global.game_score.total == 100) letter_index = 0;
else if(global.game_score.total >= 90) letter_index = 1;
else if(global.game_score.total >= 80) letter_index = 2;
else if(global.game_score.total >= 70) letter_index = 3;
else if(global.game_score.total >= 60) letter_index = 4;
else letter_index = 5;