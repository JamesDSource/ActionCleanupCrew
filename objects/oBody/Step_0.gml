event_inherited();
if(being_held && irandom_range(1, 100) < 5) {
	with(instance_create_layer(x, y, "Instances", oBlood_jiblet)) {
		type = other.blood_type;
		z = 0;
		hsp = 0;
		vsp = 0;
		esp = 0;
	}
}