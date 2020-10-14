being_held = false;
if(instance_exists(oPlayer)) {
	if(instance_exists(oPlayer.obj_held)) {
		is_interactable = false;
		if(oPlayer.obj_held == id) {
			x = oPlayer.x;	
			y = oPlayer.y+5;	
			z = 15;
			being_held = true;
		}
	}
	else is_interactable = true;
}

if(!being_held) {
	push_out(oSolid);	
	z = 0;		
}