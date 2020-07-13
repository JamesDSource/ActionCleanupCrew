repeat(irandom_range(6, 8)) {
	with(instance_create_layer(x, y, "Instances", oBreakable_bit)) {
		sprite_index = other.bits_sprite;
		image_index = irandom_range(0, image_number-1);
	}
}