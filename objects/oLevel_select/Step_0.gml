var progress_spd = 0.05;
if(!global.pause) locked = true 	

if(locked) {
	progress = approach(progress, 0, progress_spd);	
	if(progress == 0) instance_destroy();	
}
else { 
	progress = approach(progress, 1, progress_spd);

	if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) level_index--;
	else if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) level_index++;
	else if(keyboard_check_pressed(vk_space) && progress == 1) {
		oPause.toggle_pause();
		transition_to(levels[level_index].room_index);	
	}

	level_index = clamp(level_index, 0, array_length(levels) - 1);
	level_index_left = level_index - 1;
	level_index_right = level_index + 1;

	draw_set_font(fLevel_select);
	for(var i = 0; i < array_length(levels); i++) {
		var target_x = 0;
		var target_scale = 0;
		var padding = 5;
	
		if(i == level_index_left) {
			target_x = string_width(levels[i].name)/2 + padding;
			target_scale = 0.5;
		}
		else if(i < level_index) target_x = string_width(levels[i].name) + padding;
		else if(i == level_index_right) {
			target_x = w - string_width(levels[i].name)/2 - padding;
			target_scale = 0.5;
		}
		else if(i > level_index) target_x = w - string_width(levels[i].name) - padding;
		else {
			target_x = w/2;
			target_scale = 1;
		}
	

		if(!init) {
			levels[i].x_pos = target_x;
			levels[i].scale = target_scale;
		}
		else {
			levels[i].x_pos = approach(levels[i].x_pos, target_x, pos_spd);
			levels[i].scale = approach(levels[i].scale, target_scale, scale_spd);
		}
	}
	init = true;
}
