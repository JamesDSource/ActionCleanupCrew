event_inherited();

init_interactable(
	function action_level_select() {
		if(!instance_exists(oLevel_select)) {
			oPause.toggle_pause(false);
			instance_create_layer(x, y, "Controllers", oLevel_select);
		}
	}
);