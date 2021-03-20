function array_shuffle(array) {
	var len = array_length(array);
	var return_array = array_create(len);
	var temp_array = array_create(len);
	array_copy(temp_array, 0, array, 0, len);
	
	for(var i = 0; i < len; i++) {
		var rand_index = irandom_range(0, array_length(temp_array) - 1);
		return_array[i] = temp_array[rand_index];
		array_delete(temp_array, rand_index, 1);
	}
	return return_array;
}

function array_contains(array, value) {
	for(var i = 0; i < array_length(array); i++) {
		if(array[i] == value) {
			return true;	
		}
	}
	return false;
}

function array_overlap(array1, array2) {
	for(var i = 0; i < array_length(array1); i++) {
		if(array_contains(array2, array1[i])) {
			return true;	
		}
	}
	return false;
}