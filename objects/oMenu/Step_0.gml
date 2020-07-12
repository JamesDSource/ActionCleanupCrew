if(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) {
	index++;
	audio_play_sound(sdMenu_scroll, SOUNDPRIORITY.MENUS, false);
}
else if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) {
	index--;
	audio_play_sound(sdMenu_scroll, SOUNDPRIORITY.MENUS, false);	
}
index = clamp(index, 0, array_length(page)-1);

if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
	audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
	page[index][1]();	
}