if(follow != noone && instance_exists(follow)) {
	target_x = follow.x;	
	target_y = follow.y;
}

x += (target_x - x)/slow;
y += (target_y - y)/slow;

if(bound) {
	x = clamp(x, VIEWWIDTH/2, room_width - VIEWWIDTH/2);	
	y = clamp(y, VIEWHEIGHT/2, room_height - VIEWHEIGHT/2);	
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, vm);