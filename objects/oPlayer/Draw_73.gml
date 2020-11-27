if(instance_exists(selected_interactable)) {
	var draw_x, draw_y;
	with(selected_interactable) {
		draw_x = x - sprite_xoffset + sprite_width/2 + interactable_prompt_offset.x;
		draw_y = y - sprite_yoffset + interactable_prompt_offset.y;
	}
	draw_set_alpha(0.8);
	var prompt_sprite = sPrompt_space;
	if(global.gp_connected) prompt_sprite = sPrompt_gp_a;
	draw_key_prompt(prompt_sprite, -1, draw_x, draw_y, fa_center, fa_bottom, DEVICE.KEYBOARD);
	draw_set_alpha(1);
}