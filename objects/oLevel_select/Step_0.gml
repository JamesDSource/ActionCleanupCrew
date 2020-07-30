if(!global.pause) instance_destroy();

if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
	level_index--;
	if(level_index < 0) level_index = array_length(levels) - 1;
}
else if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
	level_index++;
	if(level_index >= array_length(levels)) level_index = 0;
}
else if(keyboard_check_pressed(vk_space)) {
	oPause.toggle_pause();
	transition_to(levels[level_index].room_index);	
}