function player_state_free() {
	move();
	recharge_mask();
	sprite_index = sPlayer;
	
	// swapping tools
	if(mouse_wheel_up()) {
		tool_index--;
		if(tool_index < 0) tool_index = array_length(tools) - 1;	
	}
	else if(mouse_wheel_down()) {
		tool_index++;
		if(tool_index == array_length(tools)) tool_index = 0;
	}
	tool_using = tools[tool_index];
	
	// sucking with vaccum
	if(tool_using == TOOL.VACUUM && mouse_check_button(mb_left)) {
		if(mouse_check_button_pressed(mb_left)) audio_play_sound(sdVacuum, SOUNDPRIORITY.IMPORTANT, true);
		var list_x = x + lengthdir_x(10, tool_angle);
		var list_y = y - tool_height + lengthdir_y(10, tool_angle);
		var bits = ds_list_create();
		
		collision_circle_list(list_x + lengthdir_x(30, tool_angle), list_y + lengthdir_y(30, tool_angle), 30, oBit, false, true, bits, false);
		for(var i = 0; i < ds_list_size(bits); i++) {
			var bit = bits[| i];
			with(bit) {
				var dist_div = point_distance(x, y, list_x, list_y) div 2;
				x += (list_x - x)/dist_div;
				y += (list_y - y)/dist_div;
				if(point_distance(x, y, list_x, list_y) < 3) instance_destroy();
			}
		}
		ds_list_clear(bits);

		collision_circle_list(list_x, list_y, 10, oAsh_pile, false, true, bits, false);
		for(var i = 0; i < ds_list_size(bits); i++) {
			bits[| i].suck_bits();
		}
		ds_list_destroy(bits);
	}
	else if(audio_is_playing(sdVacuum)) audio_stop_sound(sdVacuum);
	
	// picking up bodies
	var bod = instance_place(x, y, oBody)
	if((bod != noone && keyboard_check_pressed(vk_space)) || instance_exists(body_held)) {
		if(instance_exists(bod)) body_held = bod;
		state = states.holding;
	}
	
	event_inherited();
}

function player_state_holding() {
	sprite_index = sPlayer_carry;
	tool_using = TOOL.NONE;
	move();
	recharge_mask();
	event_inherited();
	
	if(instance_exists(body_held)) {
		body_held.x = x;
		body_held.y = y;
		body_held.z = 10;
		
		if(keyboard_check_pressed(vk_space)) {
			var incen_inst = collision_circle(x, y, 20, oIncinerator, false, true);
			if(incen_inst == noone || incen_inst.burn_timer > 0) {
				body_held.z = 0;
				body_held = noone;
				state = states.free;
			}
			else {
				instance_destroy(body_held);
				body_held = noone;
				incen_inst.burn_timer = incen_inst.burn_time;
			}
		}
		
		if(irandom_range(1, 100) < 5) {
			with(instance_create_layer(x, y, "Instances", oBlood_jiblet)) {
				z = 0;
				hsp = 0;
				vsp = 0;
				esp = 0;
			}
		}
	}
	else state = states.free;
}

function player_state_read() {
	if(audio_is_playing(sdVacuum)) audio_stop_sound(sdVacuum);
	tool_using = TOOL.NONE;
	image_speed = 0;
	recharge_mask();
	
	if(dialogue_ready) {
		if(keyboard_check_pressed(vk_space)) {
			dialogue_index++;
			if(dialogue_index >= array_length(dialogues)) state = states.free;
			dialogue_ready = false;
			line_index = 1;
			
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
		}
	}
	else {
		if(keyboard_check_pressed(vk_space)) {
			audio_play_sound(sdMenu_select, SOUNDPRIORITY.MENUS, false);
			line_index = string_length(dialogues[dialogue_index]);
			dialogue_ready = true;
		}
		if(dialogue_type_timer > 0) dialogue_type_timer--;	
		else {
			line_index++;
			if(string_char_at(dialogues[dialogue_index], line_index) != " ")audio_play_sound(sdText_scroll, SOUNDPRIORITY.MENUS, false);
			if(line_index > string_length(dialogues[dialogue_index])) dialogue_ready = true;
			dialogue_type_timer = dialogue_type_time;
		}
	}
}