show_pause_menu = false;
global.pause = false;
pause_toggle = function toggle_pause() {
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
	pause: [
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Resume", [pause_toggle]),
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Return to HQ", [function pause_headquarters() {
			toggle_pause();
			transition_to(rHub);
		}]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Settings", ["settings"]),
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Quit", [transition_quit])
	],
	
	settings: [
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Audio", ["audio"]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Graphics", ["graphics"]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Gameplay", ["gameplay"]),
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Save Settings", [save_settings]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["pause"])
	],
	
	graphics: [
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Fullscreen", ["fullscreen"]),
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Vsync", ["vsync"]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Brightness", ["brightness", -0.3, 0.3, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Gamma", ["gamma", 0.7, 1.3, 0.05]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["settings"])
	],
	
	audio: [
		new page_element(PAGEELEMENTTYPE.SLIDER, "Master", ["master_audio", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Music", ["music_audio", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Death Screams", ["screams_audio", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Weapons", ["weapons_audio", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["settings"])
	],
	
	gameplay: [
		new page_element(PAGEELEMENTTYPE.TOGGLE, "Use Gamepad", ["gamepad"]),
		new page_element(PAGEELEMENTTYPE.SLIDER, "Screen Shake", ["screenshake", 0, 1, 0.05]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Back", ["settings"])
	]
}

if(!is_level) {
	pages.pause = [
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Resume", [pause_toggle]),
		new page_element(PAGEELEMENTTYPE.TRANSFER, "Settings", ["settings"]),
		new page_element(PAGEELEMENTTYPE.SCRIPT, "Quit", [transition_quit])
	]
}

page = pages.pause;
