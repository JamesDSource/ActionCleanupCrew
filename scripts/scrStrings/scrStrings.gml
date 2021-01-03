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

function string_stitch() {
	var str = "";
	for(var i = 0; i < argument_count; i++) {
		str += argument[i];
	}
	return str;
}

function string_resize(str, width) {
	str = string_replace_all(str, "\n", "");
	var last_space = -1;
	for(var i = 1; i <= string_length(str); i++) {
		if(string_char_at(str, i) == " ") {
			last_space = i;	
		}
		var substr = string_copy(str, 1, i);
		if(string_width(substr) > width) {
			if(last_space == -1) {
				str = string_insert("\n", str, i)
			}
			else {
				str = string_delete(str, last_space, 1);
				str = string_insert("\n", str, last_space);
				last_space = -1;
			}
		}
	}
	return str;
}