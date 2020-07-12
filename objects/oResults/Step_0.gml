grade_y = approach(grade_y, 60, grade_spd);
if(grade_y == 60) letter_scale = approach(letter_scale, 1, letter_spd);
if(letter_scale == 1) letter_background_scale = approach(letter_background_scale, 1, letter_background_spd);

if(keyboard_check_pressed(vk_space)) {
	audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
	transition_to(rTitle_page);	
}