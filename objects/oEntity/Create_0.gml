enum SIZE {
	SMALL,
	NORMAL,
	LARGE
}

vsp = 0;
hsp = 0;

last_director_pos = undefined;

// Behavior tree
entity_behavior_tree = new behavior_tree(id);

br_check = new behavior_node();

with(br_check) {
	node_update = function() {
		if(array_length(children) >= 3) {
			if(global.victory == TEAM.NONE) {
				return children[2].node_update();	
			}
			else if(global.victory == parent_obj.team) {
				return children[0].update();	
			}
			else {
				return children[1].update();
			}
		}
	}	
}


entity_behavior_tree.root.add_child(br_check);

br_check.add_child(new behavior_node());

var bn_flee = new behavior_node();
with(bn_flee) {
	node_update = function() {
		var closest_extract = instance_nearest(x, y, oSpawn_point);
		new_move_point(closest_extract.x, closest_extract.y);
		if(point_distance(x, y, closest_extract.x, closest_extract.y) < 4) {
			instance_destroy();	
		}
	} 	
}

br_check.add_child(bn_flee);


enum BLOOD {
	RED,
	GREEN	
}

enum DEATHTYPE {
	PIERCING,
	BURN,
	EXPLOSION
}
#macro DEATHS 3

function bleed(blood_min, blood_max) {
	repeat(irandom_range(blood_min, blood_max)) {
		var jib = instance_create_layer(x, y, "Instances", oBlood_jiblet);
		jib.type = blood_type;
	}
}

kill_function = function kill(death_type) {
	function leave_body(burn_body) {
		if(death_sprite != noone) {
			var new_body = instance_create_layer(x, y, "Instances", oBody); 
			with(new_body) {
				sprite_index = other.death_sprite;
				blood_type = other.blood_type;
				size = other.size;
				burn = burn_body;
			}
			return new_body;
		}
		return noone;
	}
	hp--;
	flash_frames_left = flash_frames;
	if(hp <= 0) {			
		if(death_type == "random") death_type = irandom_range(0, DEATHS - 1);
		switch(death_type) {
			case DEATHTYPE.PIERCING:
				bleed(40, 60);
				leave_body(false);
				break;
		
			case DEATHTYPE.BURN:
				var ash_amount = 0;
				switch(size) {
					case SIZE.LARGE:
						ash_amount = irandom_range(3, 4);
						break;
					case SIZE.NORMAL:
						ash_amount = irandom_range(1, 2);
						break;
					case SIZE.SMALL:
						ash_amount = 1;
						break;
				}
				
				repeat(ash_amount) {
					var ash_pos = push_out(x + irandom_range(-8, 8), y + irandom_range(-8, 8));
					instance_create_layer(ash_pos.x, ash_pos.y, "Instances", oAsh_pile);
				}
				leave_body(true);
				break;
				
			case DEATHTYPE.EXPLOSION:
				bleed(40, 60);
				break;
		}
		
		// reseting autokill timer
		if(instance_exists(oBattle_manager)) {
			with(oBattle_manager) {
				autokill_timer = autokill_time;	
			}
		}
		
		// death sound
		if(death_sound_type != -1) {
			var ds = instance_create_layer(x, y, "Instances", oDeath_sound);
			ds.play_death_sound(death_sound_type, audio_emitter);
		}
		else audio_emitter_free(audio_emitter);
			
		if(global.death_indicators) instance_create_layer(x, y, "Above", oSkull);
		instance_destroy();
	}
	else bleed(0, 3);
}

event_inherited();

function check_for_collisions() {
	if(is_collision(x + hsp, y)) {
		repeat(hsp) if(!is_collision(x + sign(hsp), y)) x += sign(hsp);
		hsp = 0;
	}

	if(is_collision(x, y + vsp)) {
		repeat(vsp) if(!is_collision(x, y + sign(vsp))) y += sign(vsp);
		vsp = 0;
	}
}

// audio
audio_emitter = audio_emitter_create();
audio_emitter_falloff(audio_emitter, 200, 800, 1);


// flash
flash_frames = 20;
flash_frames_left = 0;

// pathfinding
move_point = {
	x: xstart,
	y: ystart
};

path = -1;
point = 0;
path_movement_speed = 1;
path_update = false;
t = 0;

function new_move_point(x_pos, y_pos) {
	if(point_distance(move_point.x, move_point.y, x_pos, y_pos) > 0) {
		move_point.x = x_pos;
		move_point.y = y_pos;
		path_update = true;
	}
}