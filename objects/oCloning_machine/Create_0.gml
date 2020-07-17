event_inherited();

max_lives = 3;
lives_remaining = max_lives;
image_speed = 0;
image_index = 0;

frame_respawn = 63;

draw_function = function draw_cloning_machine() {
	draw_depth_object();
	if(lives_remaining > 0) draw_sprite_ext(sCloning_machine_light, 3 - lives_remaining, x, y - z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}