function push_out(obj) {
	if(place_meeting(x ,y, obj)) {
		for(var i = 0; i < 100; i++) {
			// right
			if(!place_meeting(x + i, y, obj)) {
				x += i;
				break;
			}
			// left
			if(!place_meeting(x - i, y, obj)) {
				x -= i;
				break;
			}
			// top
			if(!place_meeting(x, y - i, obj)) {
				y -= i;
				break;
			}
			// down
			if(!place_meeting(x, y + i, obj)) {
				y += i;
				break;
			}
			// top left
			if(!place_meeting(x - i, y - i, obj)) {
				x -= i;
				y -= i;
				break;
			}
				// top right
			if(!place_meeting(x + i, y - i, obj)) {
				x += i;
				y -= i;
				break;
			}
			// down left
			if(!place_meeting(x - i, y + i, obj)) {
				x -= i;
				y += i;
				break;
			}
			// down right
			if(!place_meeting(x + i, y + i, obj)) {
				x += i;
				y += i;
				break; 
			}		
		}
	}
}