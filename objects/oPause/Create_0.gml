
global.pause = false;
function toggle_pause() {
	global.pause = !global.pause;
	
	if(global.pause) {
		global.sPause = sprite_create_from_surface(application_surface, 0, 0, SCREENWIDTH, SCREENHEIGHT, false, false, 0, 0);
		
		instance_deactivate_object(oDepth_object);
		instance_deactivate_object(oBattle_manager);
		instance_deactivate_object(oCamera);
	}
	else {
		instance_activate_all();
		
		sprite_delete(global.sPause);
		global.sPause = noone;
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
