ang = 0;
team = TEAM.NONE;

hit_list = ds_list_create();

function hit_spark() {
	with(instance_create_layer(x + lengthdir_x(sprite_width, ang), y + lengthdir_y(sprite_width, ang), "Above", oHit_spark)) {
		image_angle = other.ang;
	}
}

event_inherited();