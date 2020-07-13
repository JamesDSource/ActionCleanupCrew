event_inherited();

image_speed = 0;
z = irandom_range(1, 4);

spd = random_range(0.1, 1);
ang = irandom_range(0, 359);

hsp = lengthdir_x(spd, ang);
vsp = lengthdir_y(spd, ang);
esp = random_range(0.1, 1);

hit = false;