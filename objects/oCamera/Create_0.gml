camera = view_camera[0];

view_enabled = true;

view_set_visible(0, true);
view_set_wport(0, VIEWWIDTH);
view_set_hport(0, VIEWHEIGHT);
view_set_camera(0, camera);

var pm = matrix_build_projection_ortho(VIEWWIDTH, VIEWHEIGHT, -10000000, 10000000);
camera_set_proj_mat(camera, pm);

slow = 20;
target_x = x;
target_y = y;