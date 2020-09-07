if(has_shadow) {
	draw_set_alpha(0.1);
	draw_ellipse_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_black, c_black, false);
	draw_set_alpha(1);
}
if(is_method(draw_function)) draw_function();

