event_inherited();
blood_type = BLOOD.RED;
size = SIZE.NORMAL;

u_uv_origin = shader_get_uniform(shDissolve, "uv_origin");
u_uv_size = shader_get_uniform(shDissolve, "uv_size");
u_mask = shader_get_sampler_index(shDissolve, "mask");
u_mask_uv_origin = shader_get_uniform(shDissolve, "mask_uv_origin");
u_mask_uv_size = shader_get_uniform(shDissolve, "mask_uv_size");
u_dissolve_percent = shader_get_uniform(shDissolve, "dissolve_percent");
u_dissolve_rim_color = shader_get_uniform(shDissolve, "dissolve_rim_color");


draw_function = function draw_body() {
	if(burn) {
		shader_set(shDissolve);
		
		var uvs = sprite_get_uvs(sprite_index, image_index);
		shader_set_uniform_f(u_uv_origin, uvs[0], uvs[1]);
		shader_set_uniform_f(u_uv_size, uvs[2] - uvs[0], uvs[3] - uvs[1]);
		
		var mask_tex = sprite_get_texture(sDissolve_mask, 0);
		var mask_uvs = texture_get_uvs(mask_tex);
		texture_set_stage(u_mask, mask_tex);
		shader_set_uniform_f(u_mask_uv_origin, mask_uvs[0], mask_uvs[1]);
		shader_set_uniform_f(u_mask_uv_size, mask_uvs[2] - mask_uvs[0], mask_uvs[3] - mask_uvs[1]);
		
		shader_set_uniform_f(u_dissolve_percent, burn_progress);
		shader_set_uniform_f(u_dissolve_rim_color, 250/255, 110/255, 121/255);
	}
	
	draw_depth_object();
	shader_reset();
}
burn = false;
burn_progress = 1;
burn_sound = -1;