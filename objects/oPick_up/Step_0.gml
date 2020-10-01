being_held = false;
if(instance_exists(oPlayer)) {
	if(instance_exists(oPlayer.obj_held)) {
		is_interactable = false;
		if(oPlayer.obj_held == id) {
			x = oPlayer.x;	
			y = oPlayer.y+2;	
			z = 10;
			being_held = true;
		}
		else {	
			push_out(oSolid);	
			z = 0;	
		}
	}
	else is_interactable = true;
}