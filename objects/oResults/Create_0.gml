started = false;
transitioned = false;
transition_timer = room_speed*5;

letter_scale = 0;
letter_spd = 0.01;

details_surface = -1;
details_surf_w = display_get_gui_width()/2;
details_surf_h = display_get_gui_height();
details_breakdown = [
	["Survival", "life"],
	["Blood Cleanup", "blood"],
	["Ash Cleanup", "ash"],
	["Debree Cleanup", "bits"],
	["Body Cleanup", "bodies"]
];

var total_score = grade_letter_from_percent(global.game_score.total);
letter_index = grade_index_from_percent(global.game_score.total);

// adding to level lock on first non F completion
if(total_score != "F") {
	show_debug_message(global.level_lock);
	for(var i = 0; i < array_length(global.levels); i++) {
		if(global.game_score.level == "level " + room_get_name(global.levels[i].room_index) && i == global.level_lock) {
			var upper_limit = array_length(global.levels) - 1;
			if(DEMO) upper_limit = 1;
			global.level_lock = min(global.level_lock + 1, upper_limit);
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
