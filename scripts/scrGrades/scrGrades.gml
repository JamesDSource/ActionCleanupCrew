function grade_letter_from_percent(percent) {
	if(percent >= 99) return "S";
	else if(percent >= 86) return "A";
	else if(percent >= 74) return "B";
	else if(percent >= 62) return "C";
	else if(percent >= 50) return "D";
	else return "F";
}

function grade_index_from_percent(percent) {
	switch(grade_letter_from_percent(percent)) {
		case "S": return 0;
		case "A": return 1;
		case "B": return 2;
		case "C": return 3;
		case "D": return 4;
		case "F": return 5;
	}	
}

function seq_results_reviel_grade() {
	if(instance_exists(oResults)) oResults.started = true;	
}