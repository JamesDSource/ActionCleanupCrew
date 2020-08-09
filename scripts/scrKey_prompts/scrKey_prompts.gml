function draw_key_prompt(spr, key_id, x_pos, y_pos) {
	var index = 0;
	if(keyboard_check_pressed(key_id)) index = 1;
	draw_sprite(spr, index, x_pos, y_pos);
}

function draw_key_prompt_auto(spr, x_pos, y_pos) {
	var index = 0;
	if(current_second % 2 == 0) index = 1;
	draw_sprite(spr, index, x_pos, y_pos);
}