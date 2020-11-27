function player_state_free() {
	move();
	recharge_mask();
	interactables();
	sprite_index = sPlayer;
	
	// swapping tools
	if(disarmed) tool_using = TOOL.NONE;
	else {
		if(mouse_wheel_up() || check_action("switch tool", INPUTTYPE.PRESSED)) {
			tool_index--;
			if(tool_index < 0) tool_index = array_length(tools) - 1;	
		}
		else if(mouse_wheel_down()) {
			tool_index++;
			if(tool_index == array_length(tools)) tool_index = 0;
		}
		tool_using = tools[tool_index];
	}
	
	// tools
	if(check_action("use", INPUTTYPE.HELD)) {
		switch(tool_using) {
			case TOOL.MOP:
				if(!mop_using) {
					audio_play_sound(sdMop, SOUNDPRIORITY.IMPORTANT, false);
					mop_using = true;
				}
				break;
			case TOOL.VACUUM:
				//var list_x = x + lengthdir_x(10, tool_angle);
				//var list_y = y - tool_height + lengthdir_y(10, tool_angle);
				//var bits = ds_list_create();
				//collision_circle_list(list_x + lengthdir_x(20, tool_angle), list_y + lengthdir_y(20, tool_angle), 30, oBit, false, true, bits, false);
				//for(var i = 0; i < ds_list_size(bits); i++) {
				//	var bit = bits[| i];
				//	with(bit) {
				//		var dist_div = point_distance(x, y, list_x, list_y) div 3;
				//		x += (sign(list_x - x)*8)/dist_div;
				//		y += (sign(list_y - y)*8)/dist_div;
				//		if(point_distance(x, y, list_x, list_y) < 5) instance_destroy();
				//	}
				//}
				//ds_list_clear(bits);

				//collision_circle_list(list_x + lengthdir_x(30, tool_angle), list_y + lengthdir_y(30, tool_angle), 30, oAsh_pile, false, true, bits, false);
				//for(var i = 0; i < ds_list_size(bits); i++) {
				//	bits[| i].suck_bits();
				//}
				//ds_list_destroy(bits);
				if(!instance_exists(oVacuum_suction)) instance_create_layer(x, y, "Above", oVacuum_suction);
				with(oVacuum_suction) {
					direction = other.tool_angle;
					if(init) {
						look_angle = direction;
						init = false;	
					}
					x = other.x + lengthdir_x(10, direction);
					y = other.y - other.tool_height + lengthdir_y(10, direction);
				}
				break;
		}
	}
	else mop_using = false;
	
	// if holding a body, go to the body state
	if(instance_exists(obj_held)) state = states.holding;
	
	event_inherited();
}

function player_state_holding() {
	sprite_index = sPlayer_carry;
	tool_using = TOOL.NONE;
	move();
	recharge_mask();
	interactables();
	event_inherited();
	
	if(instance_exists(obj_held)) {
		if(check_action("select", INPUTTYPE.PRESSED) && !instance_exists(selected_interactable)) {
			obj_held = noone;
			state = states.free;
		}
	}
	else state = states.free;
}

function player_state_read() {
	tool_using = TOOL.NONE;
	image_speed = 0;
	recharge_mask();
	
	if(dialogue_ready) {
		if(check_action("select", INPUTTYPE.PRESSED)) {
			dialogue_index++;
			if(dialogue_index >= array_length(dialogues)) state = states.free;
			dialogue_ready = false;
			line_index = 1;
			
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
		}
	}
	else {
		if(check_action("select", INPUTTYPE.PRESSED)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			line_index = string_length(dialogues[dialogue_index]);
			dialogue_ready = true;
		}
		if(dialogue_type_timer > 0) dialogue_type_timer--;	
		else {
			line_index++;
			if(string_char_at(dialogues[dialogue_index], line_index) != " ") {
				audio_sound_pitch(sdText_scroll, 1 + random_range(-0.15, 0.15));
				audio_play_sound(sdText_scroll, SOUNDPRIORITY.MENUS, false);	
			}
			if(line_index > string_length(dialogues[dialogue_index])) dialogue_ready = true;
			dialogue_type_timer = dialogue_type_time;
		}
	}
}