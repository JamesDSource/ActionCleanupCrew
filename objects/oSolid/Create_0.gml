event_inherited();


if(sprite_index == sSolid || sprite_index == sSolid_short) sprite_index = noone;

function overley_mask_on_liquids() {
	draw_sprite_on_liquid(x, y, (sprite_index == sSolid || sprite_index == sSolid_short) ? mask_index : sprite_index, image_index, image_xscale, image_yscale, true);
}