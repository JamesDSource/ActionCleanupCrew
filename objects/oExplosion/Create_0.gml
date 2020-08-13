event_inherited();
screen_shake(3, 15);
var collisions = ds_list_create();
instance_place_list(x, y, oEntity, collisions, false);
for(var i = 0; i < ds_list_size(collisions); i++) {
	collisions[| i].kill_function(DEATHTYPE.EXPLOSION);
}
ds_list_clear(collisions);
instance_place_list(x, y, oBreakable, collisions, false);
for(var i = 0; i < ds_list_size(collisions); i++) {
	instance_destroy(collisions[| i]);
}
ds_list_destroy(collisions);