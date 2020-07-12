function player_state_free() {
	// movement
	var hDir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var vDir = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	if(hDir != 0 || vDir != 0) { 
		var ang = point_direction(0, 0, hDir, vDir);
		hsp = lengthdir_x(spd, ang);
		vsp = lengthdir_y(spd, ang);
		
		image_speed = 1;
	}
	else {
		hsp = 0;
		vsp = 0;
		image_speed = 0;
		image_index = 0;
	}
	
	// mask recharge
	if(!mask_on && mask_timer > 0) mask_timer--;
	else if(!mask_on) {
		mask_on = true;
		mask_timer = mask_time;
	}
	
	// swapping tools
	if(mouse_wheel_up()) tool_index--;
	else if(mouse_wheel_down()) tool_index++;
	tool_index = clamp(tool_index, 0, array_length(tools)-1);
	tool_using = tools[tool_index];
	
	// sucking with vaccum
	if(tool_using == TOOL.VACCUM && mouse_check_button(mb_left)) {
		var list_x = x + lengthdir_x(10, tool_angle);
		var list_y = y - tool_height + lengthdir_y(10, tool_angle);
		var bits = ds_list_create();
		
		collision_circle_list(list_x + lengthdir_x(15, tool_angle), list_y + lengthdir_y(15, tool_angle), 30, oBit, false, true, bits, false);
		for(var i = 0; i < ds_list_size(bits); i++) {
			var bit = bits[| i];
			with(bit) {
				x = approach(x, list_x, 0.5);
				y = approach(y, list_y, 0.5);
				if(point_distance(x, y, list_x, list_y) < 1) instance_destroy();
			}
		}
		ds_list_clear(bits);

		collision_circle_list(list_x, list_y, 10, oAsh_pile, false, true, bits, false);
		for(var i = 0; i < ds_list_size(bits); i++) {
			bits[| i].suck_bits();
		}
		ds_list_destroy(bits);
	}
	
	event_inherited();
}