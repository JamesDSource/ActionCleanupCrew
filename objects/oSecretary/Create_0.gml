event_inherited();

rand_dialogue = [
	["Get back to *SKIBOP* work."],
	["So much paperwork...               *BEEP*"],
	["You think you can work overtime today?"],
	["How're the *BOOP* kids? Do you have kids?"],
	["Just go down the hall for your next *BEEPIDY* assignment."],
	//["The shop on our *BEEP* right should\nhave something good for you *BOOP*."],
	["Keep up the good work *BOOP*."],
	["I wonder who will get employee of the *BEEP* month."],
	["*BEEP*"]
]



init_interactable(
	function receptionist_action() {
		var rand_index = irandom_range(0, array_length(rand_dialogue) - 1);
		if(instance_exists(oPlayer)) {
			oPlayer.play_lines(global.profiles.secretary, rand_dialogue[rand_index]);
			audio_play_sound(sdSecretary, SOUNDPRIORITY.BARK, false);	
		}
	}

);