event_inherited();
if(hp_regen_timer > 0) hp_regen_timer--;
else {
	hp = clamp(hp + 1, 0, max_hp);
	hp_regen_timer = hp_regen_time;
}