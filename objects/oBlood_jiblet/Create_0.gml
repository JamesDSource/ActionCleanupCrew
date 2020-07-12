image_speed = 0;
image_index = irandom_range(0, image_number-1);

z = irandom_range(1, 6);

spd = random_range(0.1, 1.5);
ang = irandom_range(0, 359);

hsp = lengthdir_x(spd, ang);
vsp = lengthdir_y(spd, ang);
esp = random_range(0.1, 1.5);

hit = false;