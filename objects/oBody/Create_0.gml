event_inherited();
blood_type = BLOOD.RED;
size = SIZE.NORMAL;

init_texels = true;
uvs = [];
texel_height = 0;

draw_function = function draw_body() {
	if(burn) {
		if(init_texels) {
			var texture = sprite_get_texture(sprite_index, 0);
			uvs = texture_get_uvs(texture);
			texel_height = texture_get_texel_height(texture);
			init_texels = false;
		}
		var u_percent = shader_get_uniform(shDissolve, "percent");
		var u_texel_height = shader_get_uniform(shDissolve, "texel_height");
		var u_bottom = shader_get_uniform(shDissolve, "bottom");
		var u_top = shader_get_uniform(shDissolve, "top");
		shader_set(shDissolve);	
		shader_set_uniform_f(u_percent, burn_progress);
		shader_set_uniform_f(u_texel_height, texel_height);
		shader_set_uniform_f(u_bottom, uvs[3]);
		shader_set_uniform_f(u_top, uvs[1]);
	}
	
	draw_depth_object();
	shader_reset();
}
burn = false;
burn_progress = 0;