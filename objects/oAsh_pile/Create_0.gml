event_inherited();
last_sprite = -1;
image_speed = 0;

bit_amount = 40;
bits_left = bit_amount;
bit_rate = 1;
bit_timer = bit_rate;

function suck_bits() {
	if(bit_timer == 0) {
		instance_create_layer(irandom_range(bbox_left, bbox_right), irandom_range(bbox_top, bbox_bottom), "Instances", oAsh_bit);
		bits_left--;
		bit_timer = bit_rate;
		if(bits_left == 0) instance_destroy();
	}
	else bit_timer--;
}

scale = 0;