var grade_letter_index = image_index;
if(letter_background_scale == 1) grade_letter_index = letter_index; 

draw_sprite(sGrade, 0, display_get_gui_width()/2, grade_y);
if(letter_scale == 1) draw_sprite_ext(sLetter_background, 0, 250, 60, letter_background_scale + wave(-0.2, 0.2, 2, 0), letter_background_scale + wave(-0.1, 0.1, 3, 0), 0, c_white, 1);
draw_sprite_ext(sGrade_letter, grade_letter_index, 250, 60, letter_scale, letter_scale, wave(45, -45, 3, 0), c_white, 1);

if(letter_scale == 1) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(fHUD);
	draw_set_color(c_white);
	draw_key_prompt(sPrompt_space, vk_space, display_get_gui_width()/2, grade_y + sprite_get_height(sGrade)/2 + sprite_get_height(sPrompt_space) + 15);
	draw_text(display_get_gui_width()/2, grade_y + sprite_get_height(sGrade)/2 + sprite_get_height(sPrompt_space) + 15, "Press SPACE\nto continue")
}