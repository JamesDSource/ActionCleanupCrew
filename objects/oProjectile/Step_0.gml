var hsp = lengthdir_x(spd, ang);
var vsp = lengthdir_y(spd, ang);

var breakable_inst = instance_place(x + hsp, y + vsp, oBreakable);
if(breakable_inst != noone) {
	instance_destroy(breakable_inst);
	if(!piercing) instance_destroy();
}

if(place_meeting(x + hsp, y + vsp, oSolid)) instance_destroy();

var inst = instance_place(x + hsp, y + vsp, oEntity)
if(inst != noone && inst.team != team && ds_list_find_index(hit_list, id) == -1) {
	inst.kill_function(death_type);
	if(team == TEAM.WHITE) global.white_kills++;
	else if(team == TEAM.BLACK) global.black_kills++;
	
	with(instance_create_layer(x + lengthdir_x(sprite_width, ang), y + lengthdir_y(sprite_width, ang), "Above", oHit_spark)) image_angle = other.ang;
	if(piercing) ds_list_add(hit_list, id);
	else instance_destroy();	
}

x += hsp;
y += vsp;
image_angle = ang;


if(x < 0 || y < 0 || x > room_width || y > room_height) instance_destroy();