event_inherited();
battery_holding = noone;
battery_charge_time = room_speed*3;
battery_charge_timer = battery_charge_time;

init_interactable(
	function battery_charger_action() {
		battery_holding = oPlayer.obj_held;
		oPlayer.obj_held = noone;
		battery_holding.draw_battery = false;
	}
);