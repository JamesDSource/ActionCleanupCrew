if(false && director_init) {
	draw_set_alpha(0.5);	
	
	for(var i = 0; i < ds_list_size(director_node_list); i++) {
		var node = director_node_list[| i];
		var xorg = node.x*cell_size;
		var yorg = node.y*cell_size;
		
		if(array_length(node.clear_region_index) != 0) {
			draw_set_color(debug_region_colors[node.clear_region_index[0]]);
			draw_rectangle(xorg, yorg, xorg + cell_size - 1, yorg + cell_size - 1, false);
		}
		
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(xorg + cell_size/2, yorg + cell_size/2, string(node.sights[$ TEAM.WHITE]) + "," + string(node.sights[$ TEAM.BLACK]));
	}
	draw_set_alpha(1.0);
}