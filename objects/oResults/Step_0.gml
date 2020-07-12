grade_y = approach(grade_y, display_get_gui_height()/2, grade_spd);
if(grade_y == display_get_gui_height()/2) letter_scale = approach(letter_scale, 1, letter_spd);
if(letter_scale == 1) letter_background_scale = approach(letter_background_scale, 1, letter_background_spd);

if(keyboard_check_pressed(vk_space)) transition_to(rTitle_page);