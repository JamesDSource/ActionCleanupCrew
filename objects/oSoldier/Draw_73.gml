if(path_exists(path)) {
	draw_set_color(c_red);	
	draw_path(path, path_get_point_x(path, 0), path_get_point_y(path, 0), true);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(x, bbox_top, move_point);
}