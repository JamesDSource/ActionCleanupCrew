trigger_function = function breakables_trigger_function() {
	var breakables_list = ds_list_create();
	instance_place_list(x, y, oBreakable, breakables_list, false);
	for(var i = 0; i < ds_list_size(breakables_list); i++) instance_destroy(breakables_list[| i]);
	ds_list_destroy(breakables_list);
}