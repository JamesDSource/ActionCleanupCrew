event_inherited();
if(instance_exists(oPlayer) && instance_exists(oPlayer.body_held)) is_interactable = false;
else {
	is_interactable = true;
	z = 0;
}