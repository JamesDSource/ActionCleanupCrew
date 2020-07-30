event_inherited();

init_interactable(
	function action_body() {
		with(oPlayer) {
			if(!instance_exists(body_held)) body_held = other.id; 	
		}
	}
)