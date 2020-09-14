event_inherited();
primary_color = [1, 1, 1];
secondary_color = [1, 1, 1];

draw_function = function draw_teleporter_flash() {
	shader_set(shTeleporter);
	var u_primary_color = shader_get_uniform(shTeleporter, "primary_color");
	var u_secondary_color = shader_get_uniform(shTeleporter, "secondary_color");
	shader_set_uniform_f_array(u_primary_color, primary_color);
	shader_set_uniform_f_array(u_secondary_color, secondary_color);
	draw_depth_object();
	shader_reset();
}