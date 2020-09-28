var grade_letter_index = image_index;
if(letter_scale == 1) grade_letter_index = letter_index; 

draw_sprite_ext(sGrade_letter, grade_letter_index, 250, 70, letter_scale, letter_scale, wave(45, -45, 3, 0), c_white, 1);

if(surface_exists(details_surface)) {
	draw_surface(details_surface, -details_surf_w + details_surf_w*letter_scale, 0);
}
else {
	details_surface = surface_create(details_surf_w, details_surf_h);
	surface_set_target(details_surface);
	draw_rectangle_border(0, 0, details_surf_w, details_surf_h, 1, c_black, c_white);
	var seperation = 15;
	var draw_y_breakdown = details_surf_h/2 - (array_length(details_breakdown)*seperation)/2;
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	for(var i = -1; i < array_length(details_breakdown); i++) {
		if(i == -1) draw_text(details_surf_w/2, draw_y_breakdown - seperation, "Grade Breakdown") 
		else {
			var breakdown_percent = variable_struct_get(global.game_score, details_breakdown[i][1]);
			draw_text(details_surf_w/2, draw_y_breakdown, details_breakdown[i][0] + ": " + grade_letter_from_percent(breakdown_percent));
			draw_y_breakdown += seperation;
		}
	}
	surface_reset_target();
}