var cam_x = x + irandom_range(-screen_shake_force, screen_shake_force);
var cam_y = y + irandom_range(-screen_shake_force, screen_shake_force);
camera_set_view_pos(camera, floor(cam_x), floor(cam_y));

if (!surface_exists(global.view_surface)) {
	global.view_surface = surface_create(VIEWWIDTH + 1, VIEWHEIGHT + 1);
}
view_surface_id[0] = global.view_surface;


