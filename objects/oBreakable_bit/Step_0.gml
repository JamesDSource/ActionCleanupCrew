esp -= 0.1;

if(z == 0 || place_meeting(x, y, oSolid)) {
	hit = true;
	hsp = 0;
	vsp = 0;
}

x += hsp;
y += vsp;
z += esp;
z = max(z, 0);

SETPUSHOUT;