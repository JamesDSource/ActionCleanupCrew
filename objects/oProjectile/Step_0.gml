var hsp = lengthdir_x(spd, ang);
var vsp = lengthdir_y(spd, ang);

var breakable_inst = instance_place(x + hsp, y + vsp, oBreakable);
if(breakable_inst != noone) {
	hit_spark();
	instance_destroy(breakable_inst);
	if(!piercing) instance_destroy();
}

if(place_meeting(x + hsp, y + vsp, oSolid) || place_meeting(x + hsp, y + vsp, oPlayer_solid)) {
	hit_spark();
	if(bounce > 0) {
		ang *= -1;
		hsp = 0;
		vsp = 0;
		push_out(oSolid);
		push_out(oPlayer_solid);
		bounce--;
	}
	else instance_destroy();
}

var inst = instance_place(x + hsp, y + vsp, oEntity)
if(inst != noone && inst.team != team && ds_list_find_index(hit_list, id) == -1) {
	inst.kill_function(death_type);
	if(team == TEAM.WHITE) global.white_kills++;
	else if(team == TEAM.BLACK) global.black_kills++;
	
	hit_spark();
	if(piercing) ds_list_add(hit_list, id);
	else instance_destroy();	
}

x += hsp;
y += vsp;
image_angle = ang;


if(x < 0 || y < 0 || x > room_width || y > room_height) instance_destroy();