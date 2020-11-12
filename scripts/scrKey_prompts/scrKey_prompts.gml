function draw_key_prompt(spr, key_id, x_pos, y_pos, halign, valign, device_using) {
	var index = 0;
	var joystick = -1;
	static wheel_buffer = 0;
	switch(key_id) {
		case -1:
			if(current_second % 2 == 0) index = 1;
			break;
	
		case -2:
			if(mouse_wheel_up()) wheel_buffer = 10;
			else if(mouse_wheel_down()) wheel_buffer = -10;
			switch(sign(wheel_buffer)) {
				case 1: index = 1; break;
				case -1: index = 2; break;
			}
			wheel_buffer = approach(wheel_buffer, 0, 1);
			break;
		
		case gp_axisrh:
			joystick = [key_id, gp_axisrv];
			break;
		
		case gp_axisrv:
			joystick = [gp_axisrh, key_id];
			break;
		
		case gp_axislh:
			joystick = [key_id, gp_axislv];
			break;
		
		case gp_axislv:
			joystick = [gp_axislh, key_id];
			break;
		
		default:
			switch(device_using) {
				case DEVICE.KEYBOARD: if(keyboard_check(key_id)) index = 1; break;
				case DEVICE.MOUSE: if(mouse_check_button(key_id)) index = 1; break;
				case DEVICE.GAMEPAD: if(gamepad_button_check(global.gp_slot, key_id)) index = 1; break;
			}
			break;
	}
	
	var offset = {x:0, y:0};
	if(argument_count > 4) {
		switch(halign) {
			case fa_center:
				offset.x = -sprite_get_width(spr)/2;
				break;	
			case fa_right:
				offset.x = -sprite_get_width(spr);
				break;	
		}
		switch(valign) {
			case fa_middle:
				offset.y = -sprite_get_height(spr)/2;
				break;	
			case fa_bottom:
				offset.y = -sprite_get_height(spr);
				break;	
		}
	}
	draw_sprite(spr, index, x_pos + offset.x, y_pos + offset.y);
	if(is_array(joystick)) {
		var joy_offset = {
			x: gamepad_axis_value(global.gp_slot, joystick[0]) * 5,
			y: gamepad_axis_value(global.gp_slot, joystick[1]) * 5
		}
		draw_sprite(spr, 1, x_pos + offset.x + joy_offset.x, y_pos + offset.y + joy_offset.y);
	}
}