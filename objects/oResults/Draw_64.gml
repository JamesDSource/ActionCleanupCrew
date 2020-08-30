var grade_letter_index = image_index;
if(letter_scale == 1) grade_letter_index = letter_index; 

draw_sprite_ext(sGrade_letter, grade_letter_index, 250, 70, letter_scale, letter_scale, wave(45, -45, 3, 0), c_white, 1);