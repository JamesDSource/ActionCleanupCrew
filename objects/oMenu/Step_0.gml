push_progress = approach(push_progress, 1, 0.75);

var prev_index = index;
if(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) {
	index++;
	audio_play_sound(sdMenu_scroll, SOUNDPRIORITY.MENUS, false);
}
else if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) {
	index--;
	audio_play_sound(sdMenu_scroll, SOUNDPRIORITY.MENUS, false);	
}
index = clamp(index, 0, array_length(page)-1);
if(index != prev_index) push_progress = 0;

switch(page[index].element_type) {
	case PAGEELEMENTTYPE.SCRIPT:
		if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			page[index].scr();	
		}
		break;
	case PAGEELEMENTTYPE.TRANSFER:
		if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			page = variable_struct_get(pages, page[index].page);
		}
		break;
	case PAGEELEMENTTYPE.TOGGLE:
		if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			var variable = variable_global_get(page[index].global_var);
			variable_global_set(page[index].global_var, !variable);
			page[index].update();
		}
		break;
	case PAGEELEMENTTYPE.SLIDER:
		show_horizontal_controls = true
		var variable = variable_global_get(page[index].global_var);
		if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			if(variable == page[index].lower_range) variable = page[index].upper_range;
			else variable = clamp(variable-page[index].step, page[index].lower_range, page[index].upper_range);
			variable_global_set(page[index].global_var, variable);
			page[index].update();
		}
		else if(keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			if(variable == page[index].upper_range) variable = page[index].lower_range;
			else variable = clamp(variable+page[index].step, page[index].lower_range, page[index].upper_range);
			variable_global_set(page[index].global_var, variable);
			page[index].update();
		}
		break;
}