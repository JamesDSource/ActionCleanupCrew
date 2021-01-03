for(var i = 1; i <= chain_length; i++) {
    var bone_name = "bone" + string(i);
    var bone_state = ds_map_create(); 
    skeleton_bone_state_get(bone_name, bone_state);
    bone_state[? "angle"] += (angle_difference(look_angle, direction)/(i/2));
    bone_state[? "angle"] -= bone_state[? "angle"]/5;
    skeleton_bone_state_set(bone_name, bone_state);
    ds_map_destroy(bone_state);
}

image_angle = direction;
look_angle = direction;

image_alpha = approach(image_alpha, 1, 0.1);

// Sucking up debris
var debris_list = ds_list_create();
instance_place_list(x, y, oBit, debris_list, false);
for(var i = 0; i < ds_list_size(debris_list); i++) {
    var debris = debris_list[| i];
    var ang = point_direction(debris.x, debris.y, x, y);
    var dist = point_distance(debris.x, debris.y, x, y);
    var spd = 16/(dist/6);
    debris.x = approach(debris.x, x, abs(lengthdir_x(spd, ang)));
    debris.y = approach(debris.y, y, abs(lengthdir_y(spd, ang)));
    if(point_distance(debris.x, debris.y, x, y) == 0) {
        instance_destroy(debris);
        if(suction_sound == -1 || !audio_is_playing(suction_sound)) {
			var suction_sound_playing = choose(sdVacuum_suction1, sdVacuum_suction2, sdVacuum_suction3);
			audio_sound_pitch(suction_sound_playing, 1 + random_range(-0.1, 0.1));
			suction_sound = audio_play_sound(suction_sound_playing, SOUNDPRIORITY.GUNS, false);
			screen_shake(1, 5);	
		}
    }
}
