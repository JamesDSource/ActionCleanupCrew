var hsp = lengthdir_x(spd, ang);
var vsp = lengthdir_y(spd, ang);

if(place_meeting(x + hsp, y + vsp, oSolid)) instance_destroy();

var inst = instance_place(x + hsp, y + vsp, oEntity)
if(inst != noone && inst.team != team) {
	instance_destroy();	
}

x += hsp;
y += vsp;
image_angle = ang;


if(x < 0 || y < 0 || x > room_width || y > room_height) instance_destroy();