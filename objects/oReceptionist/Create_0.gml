event_inherited();

move_point.x = xstart;
move_point.y = ystart;


rand_dialogue = [
	["Get back to work."],
	["So much paperwork..."],
	["You think you can work overtime today?"],
	["How're the kids?\nDo you have kids?"]
]



init_interactable(
	function receptionist_action() {
		if(instance_exists(oPlayer)) oPlayer.play_lines(rand_dialogue[irandom_range(0, array_length(rand_dialogue) - 1)]);
	}

);