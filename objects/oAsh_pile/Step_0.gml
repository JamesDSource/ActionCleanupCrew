if(last_sprite != sprite_index) {
	image_index = irandom_range(0, image_number - 1);
	last_sprite = sprite_index;	
}

var progress = bits_left/bit_amount;
if(progress > 0.75) sprite_index = sAsh_large;
else if(progress > 0.4) sprite_index = sAsh_mid;
else sprite_index = sAsh_small;

scale = approach(scale, 1.0, 0.01);
image_xscale = scale;
image_yscale = scale;

if(place_meeting(x, y, oVacuum_suction)) {
	if(bit_timer == 0) {
		instance_create_layer(irandom_range(bbox_left, bbox_right), irandom_range(bbox_top, bbox_bottom), "Instances", oAsh_bit);
		bits_left--;
		bit_timer = bit_rate;
		if(bits_left == 0) instance_destroy();
	}
	else bit_timer--;	
}