camera = view_camera[0];

view_enabled = true;

view_set_visible(0, true);
view_set_wport(0, VIEWWIDTH);
view_set_hport(0, VIEWHEIGHT);
view_set_camera(0, camera);

var pm = matrix_build_projection_ortho(VIEWWIDTH, VIEWHEIGHT, -10000000, 10000000);
camera_set_proj_mat(camera, pm);

slow = 10;
target_x = x;
target_y = y;
jut = 40;

screen_shake_force = 0;
screen_shake_time = 0;
screen_shake_timer = 0;