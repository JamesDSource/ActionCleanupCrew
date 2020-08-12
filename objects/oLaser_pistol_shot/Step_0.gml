event_inherited();

if(team == TEAM.WHITE) sprite_index = sLaser_pistol_shot_white;
else sprite_index = sLaser_pistol_shot_black;

spd = approach(spd, 0, spd_decrease);

if(life > 0) life--;
else instance_destroy();

spin_ang += 10*spin_dir;
image_angle = spin_ang;