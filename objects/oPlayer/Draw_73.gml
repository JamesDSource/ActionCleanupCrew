if(instance_exists(selected_interactable)) {
	var draw_x, draw_y;
	with(selected_interactable) {
		draw_x = x - sprite_xoffset + sprite_width/2;
		draw_y = y - sprite_yoffset - 5;
	}
	draw_set_alpha(0.8);
	draw_key_prompt_auto(sPrompt_space, draw_x, draw_y);
	draw_set_alpha(1);
}