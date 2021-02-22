show_pause_menu = false;
global.pause = false;
pause_toggle = function toggle_pause() {
	global.pause = !global.pause;
	
	if(global.pause) {
		if(surface_exists(global.view_surface)) global.sPause = sprite_create_from_surface(global.view_surface, 0, 0, VIEWWIDTH, VIEWHEIGHT, false, false, 0, 0);
		show_pause_menu = true;
		if(argument_count > 0 && !argument[0]) show_pause_menu = false;
		
		instance_deactivate_object(oDepth_object);
		instance_deactivate_object(oBattle_manager);
		instance_deactivate_object(oLight_manager);
		instance_deactivate_object(oLight);
		instance_deactivate_object(oCamera);
		
		audio_pause_all();
	}
	else {
		instance_activate_all();
		audio_resume_all();
		show_pause_menu = false;
		global.pause = true;
		alarm[0] = 1;
	}
	
}

event_inherited();

pages.main = [
	new page_element(PAGEELEMENTTYPE.SCRIPT, "Resume", [pause_toggle]),
	new page_element(PAGEELEMENTTYPE.TRANSFER, "Settings", ["settings"]),
	new page_element(PAGEELEMENTTYPE.SCRIPT, "Quit", [transition_quit])
]

if(is_level) {
	array_insert(
		pages.main, 
		1,
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Return to HQ", [function() {
				toggle_pause();
				transition_to(rHub);
			}])
		);
}

page = pages.main;
