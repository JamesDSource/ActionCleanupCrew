event_inherited();

// gun
var dif = angle_difference(gun_angle_real, gun_angle);
gun_angle_real -= min(abs(dif), 10) * sign(dif);

var gun_y_scale = 1;
if(instance_exists(gun_target) && gun_target.x < x) gun_y_scale = -1;
var gun_x_offset = lengthdir_x(-gun_kick, gun_angle_real);
var gun_y_offset = lengthdir_y(-gun_kick, gun_angle_real);
draw_sprite_ext(gun_using.sprite, 0, x + gun_x_offset, y - gun_height + gun_y_offset, 1, gun_y_scale, gun_angle_real, image_blend, image_alpha);

gun_kick = approach(gun_kick, 0, 0.5);