function draw_key_prompt(spr, key_id, x_pos, y_pos, halign, valign) {
	var index = 0;
	if((key_id == -1 && current_second % 2 == 0) || keyboard_check(key_id)) index = 1;
	
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