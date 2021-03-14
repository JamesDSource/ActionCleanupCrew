if(director_init) {
	draw_set_alpha(0.5);	
	
	for(var i = 0; i < ds_list_size(director_node_list); i++) {
		var node = director_node_list[| i];
		var xorg = node.x*cell_size;
		var yorg = node.y*cell_size;
		
		draw_set_color(node.is_solid ? c_red : c_lime);
		draw_rectangle(xorg, yorg, xorg + cell_size - 1, yorg + cell_size - 1, false);
	}
	draw_set_alpha(1.0);
}