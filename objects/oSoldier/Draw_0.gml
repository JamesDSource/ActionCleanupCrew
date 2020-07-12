draw_self();

// helmat
if(helmat) {
	var helmat_spr = noone;
	if(team == TEAM.BLACK) helmat_spr = sSoldier_black_mask;
	else if(team == TEAM.WHITE) helmat_spr = sSoldier_white_mask;
	
	if(helmat_spr != noone) draw_sprite_ext(helmat_spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

// gun
var dif = angle_difference(gun_angle_real, gun_angle);
gun_angle_real -= min(abs(dif), 10) * sign(dif);

var gun_y_scale = 1;
if(gun_angle_real < 270 && gun_angle_real > 90) gun_y_scale = -1;
var gun_x_offset = lengthdir_x(-gun_kick, gun_angle_real);
var gun_y_offset = lengthdir_y(-gun_kick, gun_angle_real);
draw_sprite_ext(gun_using.sprite, 0, x + gun_x_offset, y - gun_height + gun_y_offset, 1, gun_y_scale, gun_angle_real, image_blend, image_alpha);

gun_kick = approach(gun_kick, 0, 0.5);