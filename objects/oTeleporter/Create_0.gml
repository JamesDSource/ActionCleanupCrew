event_inherited();

function group_color(primary, secondary) constructor {
	primary_color = primary;
	secondary_color = secondary;
	
	for(var i = 0; i < array_length(primary_color); i++) {
		primary_color[i]/=255;
		secondary_color[i]/=255;
	}
}

groups = ds_map_create();
groups[? "red"] = new group_color(
	[255, 75, 30],
	[0, 180, 120]
);
groups[? "blue"] = new group_color(
	[25, 133, 255],
	[180, 115, 0]
);
groups[? "green"] = new group_color(
	[65, 255, 25],
	[180, 0, 125]
);
groups[? "yellow"] = new group_color(
	[255, 230, 25],
	[40, 0, 180]
);

draw_function = function draw_teleporter() {
	shader_set(shTeleporter);
	var u_primary_color = shader_get_uniform(shTeleporter, "primary_color");
	var u_secondary_color = shader_get_uniform(shTeleporter, "secondary_color");
	shader_set_uniform_f_array(u_primary_color, groups[? group].primary_color);
	shader_set_uniform_f_array(u_secondary_color, groups[? group].secondary_color);
	draw_depth_object();
	shader_reset();
}

connected_to = noone;
can_teleport = true;
can_teleport_time = 5;
can_teleport_timer = can_teleport_time;
function pull_player() {
	can_teleport = false;
	if(instance_exists(oPlayer)) {
		with(oPlayer) {
			hsp = 0;	
			vsp = 0;	
			x = other.x;
			y = other.y;
			audio_play_sound(sdTeleporter, SOUNDPRIORITY.IMPORTANT, false);
		}
		with(instance_create_layer(x, y, "Instances", oTeleporter_flash)) {
			var colors = other.groups[? other.group];
			primary_color =	colors.primary_color;
			secondary_color = colors.secondary_color;	
		}
	}
}