draw_sprite(sGrade, 0, 20, grade_y);
if(letter_scale == 1) draw_sprite_ext(sLetter_background, 0, display_get_gui_width()/2, display_get_gui_height()/2, letter_background_scale + wave(-0.2, 0.2, 2, 0), letter_background_scale + wave(-0.1, 0.1, 3, 0), 0, c_white, 1);
draw_sprite_ext(sGrade_letter, letter_index, display_get_gui_width()/2, display_get_gui_height()/2, letter_scale, letter_scale, wave(45, -45, 3, 0), c_white, 1);

draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(fHUD);
draw_set_color(c_white);
draw_text(0, display_get_gui_height(), "Press space to continue.");