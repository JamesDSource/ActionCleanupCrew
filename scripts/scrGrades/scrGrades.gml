function grade_letter_from_percent(percent) {
	if(global.game_score.total >= 99) return "S";
	else if(global.game_score.total >= 86) return "A";
	else if(global.game_score.total >= 74) return "B";
	else if(global.game_score.total >= 62) return "C";
	else if(global.game_score.total >= 50) return "D";
	else return "F";
}