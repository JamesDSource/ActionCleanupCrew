var player_holding = noone;
if(instance_exists(oPlayer)) player_holding = oPlayer.obj_held;

powered = false;
is_interactable = false;
if(instance_exists(battery_held)) {
	// Edject battery if taken out
	if(player_holding == battery_held) {
		battery_held.draw_battery = true;
		battery_held = noone;
	}
	else { // If the battery is still inserted
		// Put battery in the slot
		battery_held.x = x + battery_point_offset.x;
		battery_held.y = y + battery_point_offset.y;
		
		// Depleat power from battery
		if(battery_depleat_timer > 0) battery_depleat_timer--;
		else {
			battery_held.depleat_charge();
			battery_depleat_timer = battery_depleat_time;	
		}
		
		// Check for charge
		if(battery_held.charge > 0) {
			powered = true;
			sprite_index = sGenerator;
		}
	}
}
else {
	if(instance_exists(player_holding) && player_holding.object_index == oBattery) is_interactable = true;
	battery_depleat_timer = battery_depleat_time;
}

if(hum_pitch != target_hum_pitch) {
	hum_pitch = approach(hum_pitch, target_hum_pitch, hum_pitch_speed);
	audio_sound_pitch(sdGenerator_hum, hum_pitch);
	audio_sound_gain(sdGenerator_hum, hum_pitch, 0);
}

if(sprite_index == sGenerator) {
	switch(round(image_index)) {
		case 9:
			if(!pulse_sound_played) {
				audio_play_sound_on(audio_emitter, sdGenerator_pulse, false, SOUNDPRIORITY.AMBIENCE);
				pulse_sound_played = true;	
			}
			break;
		case 16:
			if(!steam_sound_played) {
				audio_play_sound_on(audio_emitter, sdGenerator_steam_released, false, SOUNDPRIORITY.AMBIENCE);
				steam_sound_played = true;	
			}
			break;
	}
	target_hum_pitch = 1.0;
}
else target_hum_pitch = 0.0;
