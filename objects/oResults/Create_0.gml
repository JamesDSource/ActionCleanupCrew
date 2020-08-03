grade_y = - 32;
grade_spd = 2;

letter_scale = 0;
letter_spd = 0.01;

letter_background_scale = 0;
letter_background_spd = 0.05;

var total_score = grade_letter_from_percent(global.game_score.total);
switch(total_score) {
	case "S": letter_index = 0; break;
	case "A": letter_index = 1; break;
	case "B": letter_index = 2; break;
	case "C": letter_index = 3; break;
	case "D": letter_index = 4; break;
	case "F": letter_index = 5; break;
}

// adding to level lock on first non F completion
if(total_score != "F") {
	show_debug_message(global.level_lock);
	for(var i = 0; i < array_length(global.levels); i++) {
		if(global.game_score.level == "level " + room_get_name(global.levels[i].room_index) && i == global.level_lock) {
			global.level_lock++; 
			break;
		}
	}
}

// saving highscores
var saved_score = variable_struct_get(global.highest_grades, global.game_score.level);
if(is_undefined(saved_score) || saved_score < global.game_score.total) {
	variable_struct_set(global.highest_grades, global.game_score.level, global.game_score.total);
}

save();