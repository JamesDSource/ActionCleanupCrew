event_inherited();

enum GUN {
	RIFLE,
	LASER
}
total_guns = 2;

helmat = false;
if(irandom_range(1, 100) < 50) helmat = true;


gun_using = irandom_range(0, total_guns-1);