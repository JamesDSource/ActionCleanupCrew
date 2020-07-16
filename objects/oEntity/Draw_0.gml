if(flash_frames_left > 0) {
	flash_frames_left--;
	shader_set(shFlash);
	var u_percent = shader_get_uniform(shFlash, "percent");
	var percent = flash_frames_left/flash_frames;
	shader_set_uniform_f(u_percent, percent);
}
event_inherited();
shader_reset();