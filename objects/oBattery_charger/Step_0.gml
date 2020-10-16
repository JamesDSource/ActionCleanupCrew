is_interactable = false;
if(instance_exists(oPlayer) && instance_exists(oPlayer.obj_held) && oPlayer.obj_held.object_index == oBattery) {
	if(!instance_exists(battery_holding)) is_interactable = true;
	if(oPlayer.obj_held == battery_holding) {
		battery_holding.draw_battery = true;
		battery_holding = noone;
	}
}

if(instance_exists(battery_holding)) {
	battery_holding.x = x;
	battery_holding.y = y - 7;
	if(!battery_holding.broken) { 
		if(battery_charge_timer > 0) battery_charge_timer--;
		else {
			with(battery_holding) {
				charge = clamp(charge + 1, 0, max_charge)
			}
			battery_charge_timer = battery_charge_time;	
		}
	}
}
else battery_charge_timer = battery_charge_time;