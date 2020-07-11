sides = [[noone, noone], [noone, noone]];

if(instance_exists(oSoldier)) {
	with(oSoldier) {
		if(cover == other.id) {
			var v_side = -1;
			if(team == TEAM.WHITE) v_side = 1;
			else if(team == TEAM.BLACK) v_side = 0;
			
			var h_side = -1;
			if(cover_side == 1) h_side = 1;
			else if(cover_side == -1) h_side = 0;
			
			if(h_side != -1 && v_side != -1) other.sides[v_side][h_side] = id;
		}
	}
}