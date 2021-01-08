event_inherited();

if(hit && sprite_exists(splatter)) {
	draw_sprite_on_liquid(x, y, splatter, irandom_range(0, sprite_get_number(splatter)-1), 1, 1, false);
	instance_destroy();	
}