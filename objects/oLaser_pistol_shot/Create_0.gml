event_inherited();

life = irandom_range(8, 12)*room_speed;
spd_decrease = random_range(0.01, 0.1);

if(irandom_range(1, 100) < 50) spin_dir = 1;
else spin_dir = -1;

spin_ang = 0;