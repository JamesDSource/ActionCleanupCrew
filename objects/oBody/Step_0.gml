event_inherited();
if(instance_exists(oPlayer)) {
	if(instance_exists(oPlayer.body_held)) {
		is_interactable = false;
		if(oPlayer.body_held == id && irandom_range(1, 100) < 5) {
			with(instance_create_layer(x, y, "Instances", oBlood_jiblet)) {
				type = other.blood_type;
				z = 0;
				hsp = 0;
				vsp = 0;
				esp = 0;
			}
		}
	}
	else {
		is_interactable = true;
		z = 0;
	}
}