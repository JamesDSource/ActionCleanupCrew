event_inherited();

if(irandom_range(1, 100) < 10) {
	with(instance_create_layer(x, y, "Instances", oBlood_jiblet)) {
		type = BLOOD.GREEN;
		spd = random_range(0.1, 0.3);
		z = other.z;
		esp = 0;
	}
}