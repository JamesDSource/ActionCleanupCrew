if(place_meeting(x, y, oPlayer)) {
	if(is_method(trigger_function)) trigger_function();	
	if(!reuse) instance_destroy();
}