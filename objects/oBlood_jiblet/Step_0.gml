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

if(!init) {
	switch(type) {
		case BLOOD.RED: 
			sprite_index = sBlood_chunks;
			splatter = sBlood_splatter;
			break;
		case BLOOD.GREEN:
			sprite_index = sBlood_chunks_green;
			splatter = sBlood_splatter_green;
			break;
	}
	image_speed = 0;
	image_index = irandom_range(0, image_number-1);
	init = true;
}