event_inherited();

z = irandom_range(1, 6);

spd = random_range(0.1, 1.5);
ang = irandom_range(0, 359);

hsp = lengthdir_x(spd, ang);
vsp = lengthdir_y(spd, ang);
esp = random_range(0.1, 1.5);

hit = false;

init = false;
type = BLOOD.RED;
splatter = noone;