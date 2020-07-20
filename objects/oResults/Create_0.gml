grade_y = - 32;
grade_spd = 2;

letter_scale = 0;
letter_spd = 0.01;

letter_background_scale = 0;
letter_background_spd = 0.05;

var total_score = grade_letter_from_percent(global.game_score.total);
if(total_score == "S") letter_index = 0;
else if(total_score == "A") letter_index = 1;
else if(total_score == "B") letter_index = 2;
else if(total_score == "C") letter_index = 3;
else if(total_score == "D") letter_index = 4;
else letter_index = 5;

// saving highscores
var saved_score = variable_struct_get(global.highest_grades, global.game_score.level);
if(is_undefined(saved_score) || saved_score < global.game_score.total) {
	variable_struct_set(global.highest_grades, global.game_score.level, global.game_score.total);
	save();
}