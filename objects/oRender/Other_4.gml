for(var i = 0; i < array_length(grayscale_layers); i++) {
	var layer_id = layer_get_id(grayscale_layers[i]);
	layer_script_begin(
		layer_id,
		function() {
			if(event_type == ev_draw && event_number == 0) {
				shader_set(shFloor_grayscale);
				shader_set_uniform_i(shader_get_uniform(shFloor_grayscale, "active"), global.bg_grayscale);
			}
		}
	);
	
	layer_script_end(
		layer_id,
		function() {
			if(event_type == ev_draw && event_number == 0) {
				shader_reset();
			}
		}
	);
}