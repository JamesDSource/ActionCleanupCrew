camera = view_camera[0];

view_enabled = true;

camera_set_view_size(camera, VIEWWIDTH + 1, VIEWHEIGHT + 1);

view_set_visible(0, true);
view_set_camera(0, camera);

slow = 20;
target_x = x;
target_y = y;
jut = 40;

screen_shake_force = 0;
screen_shake_time = 0;
screen_shake_timer = 0;

if(instance_exists(follow)) {
	x = follow.x - (VIEWWIDTH+1)/2;
	y = follow.y - (VIEWHEIGHT+1)/2;
}