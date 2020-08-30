function string_get_words(str) {
	if(string_char_at(str, string_length(str)) != " ") str += " ";
	
	var output = array_create(0);
	var current_word = "";
	for(var i = 1; i <= string_length(str); i++) {
		var char = string_char_at(str, i);
		if(char == " ") {
			output[array_length(output)] = current_word;
			current_word = "";
		}
		else current_word += char;
	}
	
	return output;
}

function string_create_paragraph() {
	var str = "";
	for(var i = 0; i < argument_count; i++) {
		str += argument[i];
		if(i != argument_count - 1) str += "\n";
	}
	return str;
}