depth_grid = ds_grid_create(1, 2);
amount = 0;

function event_order(event, numb) {
	for(var i = 0; i < amount; i++) {
		var inst = depth_grid[# 1, i];	
		with(inst) event_perform(event, numb);
	}
}