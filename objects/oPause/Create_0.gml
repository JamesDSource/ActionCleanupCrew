show_pause_menu = false;
global.pause = false;
function toggle_pause() {
	global.pause = !global.pause;
	
	if(global.pause) {
		global.sPause = sprite_create_from_surface(application_surface, 0, 0, SCREENWIDTH, SCREENHEIGHT, false, false, 0, 0);
		show_pause_menu = true;
		if(argument_count > 0 && !argument[0]) show_pause_menu = false;
		
		instance_deactivate_object(oDepth_object);
		instance_deactivate_object(oBattle_manager);
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

pages = {
	main: [
		["Resume", toggle_pause],
		["Title Screen", function pause_title_screen() {
			toggle_pause();
			transition_to(rTitle_page);
		}],
		["Quit", function menu_quit() {transition_quit();}]
	]
}

page = pages.main;
