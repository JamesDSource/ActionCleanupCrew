if(sprite_index == sCloning_machine) {
	sprite_index = sCloning_machine_idle;
	instance_create_layer(x, y-12, "Instances", oPlayer);
	if(instance_exists(oCamera)) oCamera.follow = oPlayer;
}