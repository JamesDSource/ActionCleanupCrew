event_inherited();
if(instance_exists(battery_held)) {
	draw_sprite_ext(battery_held.sprite_index, battery_held.image_index, battery_held.x, battery_held.y, 1, 1, 0, c_white, image_alpha);	
}