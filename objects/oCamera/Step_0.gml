if(follow != noone && instance_exists(follow)) {
	target_x = follow.x;	
	target_y = follow.y;
}

x += (target_x - x)/slow;
y += (target_y - y)/slow;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, vm);