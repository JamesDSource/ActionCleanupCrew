started = false;
alarm[0] = room_speed;

frames_left = mins * 60 * room_speed;

global.white_kills = 0;
global.black_kills = 0;
global.game_score = {
	blood: 100,
	ash: 100,
	bits: 100,
	total: 0,
	finished: false	
};

winner_message = "";