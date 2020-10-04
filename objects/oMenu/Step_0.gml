push_progress = approach(push_progress, 1, 0.75);

var prev_index = index;
if(check_action("down", INPUTTYPE.PRESSED)) {
	index++;
	audio_play_sound(sdMenu_scroll, SOUNDPRIORITY.MENUS, false);
}
else if(check_action("up", INPUTTYPE.PRESSED)) {
	index--;
	audio_play_sound(sdMenu_scroll, SOUNDPRIORITY.MENUS, false);	
}
index = clamp(index, 0, array_length(page)-1);
if(index != prev_index) push_progress = 0;

switch(page[index].element_type) {
	case PAGEELEMENTTYPE.SCRIPT:
		if(check_action("select", INPUTTYPE.PRESSED)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			page[index].scr();	
		}
		break;
	case PAGEELEMENTTYPE.TRANSFER:
		if(check_action("select", INPUTTYPE.PRESSED)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			page = variable_struct_get(pages, page[index].page);
		}
		break;
	case PAGEELEMENTTYPE.TOGGLE:
		if(check_action("select", INPUTTYPE.PRESSED)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			var variable = variable_global_get(page[index].global_var);
			variable_global_set(page[index].global_var, !variable);
			page[index].update();
		}
		break;
	case PAGEELEMENTTYPE.SLIDER:
		show_horizontal_controls = true
		var variable = variable_global_get(page[index].global_var);
		if(check_action("left", INPUTTYPE.PRESSED)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			if(variable == page[index].lower_range) variable = page[index].upper_range;
			else variable = clamp(variable-page[index].step, page[index].lower_range, page[index].upper_range);
			variable_global_set(page[index].global_var, variable);
			page[index].update();
		}
		else if(check_action("right", INPUTTYPE.PRESSED)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			if(variable == page[index].upper_range) variable = page[index].lower_range;
			else variable = clamp(variable+page[index].step, page[index].lower_range, page[index].upper_range);
			variable_global_set(page[index].global_var, variable);
			page[index].update();
		}
		break;
}