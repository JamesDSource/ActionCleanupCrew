t++;
var progress_spd = 0.05;
if(!global.pause) locked = true;	

if(locked) {
	if(progress == 1) audio_play_sound(sdLevel_select_close, SOUNDPRIORITY.MENUS, false);
	progress = approach(progress, 0, progress_spd);	
	if(progress == 0) instance_destroy();	
}
else { 
	progress = approach(progress, 1, progress_spd);

	if(check_action("left", INPUTTYPE.PRESSED)) {
		level_index--;
		audio_play_sound(sdLevel_select_scroll, SOUNDPRIORITY.MENUS, false);
	}
	else if(check_action("right", INPUTTYPE.PRESSED)) {
		level_index++;
		audio_play_sound(sdLevel_select_scroll, SOUNDPRIORITY.MENUS, false);
	}
	else if(check_action("select", INPUTTYPE.PRESSED) && level_index <= global.level_lock) {
		global.level_target = global.levels[level_index];
		audio_play_sound(sdLevel_select_choose, SOUNDPRIORITY.MENUS, false);
	}	
	level_index = clamp(level_index, 0, array_length(global.levels)-1);
	level_index_left = level_index - 1;
	level_index_right = level_index + 1;

	draw_set_font(fLevel_select);
	for(var i = 0; i < array_length(global.levels); i++) {
		var target_x = 0;
		var target_scale = 0;
		var target_alpha = 0;
		var padding = 2;
	
		if(i == level_index_left) {
			target_x = string_width(global.levels[i].name)/2 + padding;
			target_scale = 0.5;
			target_alpha = 0.5;
		}
		else if(i < level_index) target_x = string_width(global.levels[i].name) + padding;
		else if(i == level_index_right) {
			target_x = w - string_width(global.levels[i].name)/2 - padding;
			target_scale = 0.5;
			target_alpha = 0.5;
		}
		else if(i > level_index) target_x = w - string_width(global.levels[i].name) - padding;
		else {
			target_x = w/2;
			target_scale = 1;
			target_alpha = 1;
			
		}
	

		if(!init) {
			global.levels[i].x_pos = target_x;
			global.levels[i].scale = target_scale;
			global.levels[i].alpha = target_alpha;
		}
		else {
			global.levels[i].x_pos = approach(global.levels[i].x_pos, target_x, pos_spd);
			global.levels[i].scale = approach(global.levels[i].scale, target_scale, scale_spd);
			global.levels[i].alpha = approach(global.levels[i].alpha, target_alpha, scale_spd);
		}
	}
	init = true;
}

// show states
if(progress == 1 && show_state < show_state_max) {
	if(show_state_timer > 0) show_state_timer--;
	else {
		show_state++;	
		show_state_timer = show_state_time;
		audio_play_sound(sdLevel_select_show_state, SOUNDPRIORITY.MENUS, false);
	}
}