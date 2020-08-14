if(place_meeting(x, y, oEntity)) {
	instance_create_layer(x, y, "Instances", oExplosion);
	instance_destroy();	
}