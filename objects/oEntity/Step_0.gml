if(place_meeting(x + hsp, y, oSolid)) {
	repeat(hsp) if(!place_meeting(x + sign(hsp), y, oSolid)) x += sign(hsp);
	hsp = 0;
}

if(place_meeting(x, y + vsp, oSolid)) {
	repeat(vsp) if(!place_meeting(x, y + sign(vsp), oSolid)) y += sign(vsp);
	vsp = 0;
}

x += hsp;
y += vsp;

