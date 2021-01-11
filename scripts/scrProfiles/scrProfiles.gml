function profile(profile_name, profile_portrait, profile_sound) constructor {
	name = profile_name;
	portriat = profile_portrait;
	sound = profile_sound;
}

global.profiles = {
	secretary: new profile("Secretary", sPortrait_secretary, sdText_scroll_secretary),
	loudspeaker: new profile("Loudspeaker", sPortrait_loudspeaker, sdText_scroll_loudspeaker),
	radio: new profile("Radio", sPortrait_radio, sdText_scroll_loudspeaker)
}