if(start) {
	scale = approach(scale, 1, 0.05);
	var channel = animcurve_get_channel(aYou_died, "death");
	var curve = animcurve_channel_evaluate(channel, scale);

	image_xscale = curve;
	image_yscale = curve;
	draw_sprite_ext(sprite_index, 0, display_get_gui_width()/2, display_get_gui_height()/2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}