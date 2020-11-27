visible = false;

// Drawing
draw_function = function draw_depth_object() {
	if(sprite_exists(sprite_index)) draw_sprite_ext(sprite_index, image_index, x, y-z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

// Interactables
is_interactable = false;
function init_interactable(action) {
	is_interactable = true;
	interact_method = action;
	interactable_prompt_offset = {
		x: 0,
		y: -5
	}
}