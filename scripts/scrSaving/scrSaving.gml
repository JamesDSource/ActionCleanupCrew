#macro SAVEFILENAME "ACC.save"
#macro SAVEFILESETTINGSNAME "setting.ini"

function save_json_to_file(filename, map) {
	var str = json_encode(map);
	var save_buffer = buffer_create(string_byte_length(str)+1, buffer_fixed, 1);
	buffer_write(save_buffer, buffer_string, str);
	buffer_save(save_buffer, filename);
	buffer_delete(save_buffer);
}

function load_json_from_file(filename) {
	var save_buffer = buffer_load(filename);
	var str = buffer_read(save_buffer, buffer_string);
	buffer_delete(save_buffer);
	
	return json_decode(str);
}

function init_save_file() {
	var new_save = ds_map_create();
	
	// level grades
	var levels = ds_map_create();
	ds_map_add_map(new_save, "levels", levels);
	
	new_save[? "level lock"] = 0;
	new_save[? "intro done"] = false;
	
	save_json_to_file(SAVEFILENAME, new_save);
	ds_map_destroy(new_save);
}

#region	global stats
	global.highest_grades = {};
	global.level_lock = 0;
	global.intro_done = false;
#endregion

function save() {
	var save_map = load_json_from_file(SAVEFILENAME);
	
	// edit save file with updated info
	var highest_grade_names = variable_struct_get_names(global.highest_grades);
	for(var i = 0; i < array_length(highest_grade_names); i++) {
		var grade = variable_struct_get(global.highest_grades, highest_grade_names[i]);
		save_map[? "levels"][? highest_grade_names[i]] = grade;
	}
	
	save_map[? "level lock"] = global.level_lock;
	save_map[? "intro done"] = global.intro_done;
	
	save_json_to_file(SAVEFILENAME, save_map);	
	ds_map_destroy(save_map);
}

function load() {
	var save_map = load_json_from_file(SAVEFILENAME);
	
	// load highscores
	var high_scores = save_map[? "levels"];
	var map_key = ds_map_find_first(high_scores);
	repeat(ds_map_size(high_scores)) {
		if(!is_undefined(map_key)) {
			variable_struct_set(global.highest_grades, map_key, high_scores[? map_key]);
			map_key = ds_map_find_next(high_scores, map_key);
		}
	}
	
	global.level_lock = save_map[? "level lock"];
	global.intro_done = save_map[? "intro done"];
	
	ds_map_destroy(save_map);
}

function load_settings() {
	ini_open(SAVEFILESETTINGSNAME);
	
	global.master_audio = ini_read_real("audio", "master", 0.5);
	global.music_audio = ini_read_real("audio", "music", 1.0);
	global.screams_audio = ini_read_real("audio", "screams", 1.0);
	global.weapons_audio = ini_read_real("audio", "weapons", 1.0);
	
	global.fullscreen = ini_read_real("graphics", "fullscreen", true);
	global.vsync = ini_read_real("graphics", "vsync", true);
	global.brightness = ini_read_real("graphics", "brightness", 0.0);
	global.gamma = ini_read_real("graphics", "gamma", 1.0);
	global.bg_grayscale = ini_read_real("graphics", "bg grayscale", 0.0);
	
	global.gamepad = ini_read_real("gameplay", "gamepad", false);
	global.screenshake = ini_read_real("gameplay", "screenshake", 1.0);
	global.toggle_tool_use = ini_read_real("gameplay", "toggle tool use", false);
	global.death_indicators = ini_read_real("gameplay", "death indicators", true);
	
	ini_close();
}

function save_settings() {
	ini_open(SAVEFILESETTINGSNAME);
	
	ini_write_real("audio", "master", global.master_audio);
	ini_write_real("audio", "music", global.music_audio);
	ini_write_real("audio", "screams", global.screams_audio);
	ini_write_real("audio", "weapons", global.weapons_audio);
	
	ini_write_real("graphics", "fullscreen", global.fullscreen);
	ini_write_real("graphics", "vsync", global.vsync);
	ini_write_real("graphics", "brightness", global.brightness);
	ini_write_real("graphics", "gamma", global.gamma);
	ini_write_real("graphics", "bg grayscale", global.bg_grayscale);
	
	ini_write_real("gameplay", "gamepad", global.gamepad);
	ini_write_real("gameplay", "screenshake", global.screenshake);
	ini_write_real("gameplay", "toggle tool use", global.toggle_tool_use);
	ini_write_real("gameplay", "death indicators", global.death_indicators);
	
	ini_close();
}