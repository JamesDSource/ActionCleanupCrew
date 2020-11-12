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

