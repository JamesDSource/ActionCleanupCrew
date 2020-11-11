function draw_key_prompt(spr, key_id, x_pos, y_pos, halign, valign, device_using) {
	var index = 0;
	static wheel_buffer = 0;
	if(key_id == -1) {
		if(current_second % 2 == 0) index = 1;
	}
	else if(key_id == -2) {
		if(mouse_wheel_up()) wheel_buffer = 10;
		else if(mouse_wheel_down()) wheel_buffer = -10;
		switch(sign(wheel_buffer)) {
			case 1: index = 1; break;
			case -1: index = 2; break;
		}
		wheel_buffer = approach(wheel_buffer, 0, 1);
	}
	else {
		switch(device_using) {
			case DEVICE.KEYBOARD: if(keyboard_check(key_id)) index = 1; break;
			case DEVICE.MOUSE: if(mouse_check_button(key_id)) index = 1; break;
			case DEVICE.GAMEPAD: if(gamepad_button_check(global.gp_slot, key_id)) index = 1; break;
		}
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
}