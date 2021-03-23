enum BEHAVIORNODERESULT {
    CONTINUE,
    SUCCESS,
    FALURE
}

function behavior_node() constructor {
    parent = -1;
	parent_obj = noone;
	
    children = [];
    
    function add_child(node) {
        array_push(children, node);
        node.parent = self;
		node.update_parent_obj(parent_obj);
    }
	
	function update_parent_obj(new_obj) {
		parent_obj = new_obj;
		for(var i = 0; i < array_length(children); i++) {
			children[i].update_parent_obj(new_obj);	
		}
	}
    
    node_update = function(){return BEHAVIORNODERESULT.CONTINUE};
}

function behavior_node_selector() {
    var bn = new behavior_node();
	
	with(bn) {
		node_index = 0;
		node_update = function () {
            if(array_length(children) > 0) {
                var result = children[node_index].node_update();
                switch(result) {
					case BEHAVIORNODERESULT.CONTINUE:
						return BEHAVIORNODERESULT.CONTINUE;
						break;
                    case BEHAVIORNODERESULT.SUCCESS:
						node_index = 0;
                        return BEHAVIORNODERESULT.SUCCESS;
                        break;
                    case BEHAVIORNODERESULT.FALURE:
                        node_index++;
                        if(node_index < array_length(children)) {
                            return BEHAVIORNODERESULT.CONTINUE;
                        }
                        else {
							node_index = 0;
                            return BEHAVIORNODERESULT.FALURE;
                        }
                        break;
                }
            }
            return BEHAVIORNODERESULT.FALURE;
        }
	}
	return bn;
}

function behavior_node_sequence() {
    var bn = new behavior_node();
	
	with(bn) {
		node_index = 0;	
		node_update = function () {
            if(array_length(children) > 0) {
                var result = children[node_index].node_update();
                switch(result) {
					case BEHAVIORNODERESULT.CONTINUE:
						return BEHAVIORNODERESULT.CONTINUE;
						break;
                    case BEHAVIORNODERESULT.SUCCESS:
                        node_index++;
                        if(node_index < array_length(children)) {
							node_index = 0;
                            return BEHAVIORNODERESULT.CONTINUE;
                        }
                        else {
							node_index = 0;
                            return BEHAVIORNODERESULT.SUCCESS;
                        }
                        break;
                    case BEHAVIORNODERESULT.FALURE:
                        return BEHAVIORNODERESULT.FALURE;
                        break;
                }
            }
            return BEHAVIORNODERESULT.FALURE;
        }	
	}
	return bn;
}

function behavior_node_do_all() {
	var bn = new behavior_node();
	
	with(bn) {
		node_update = function () {
            for(var i = 0; i < array_length(children); i++) {
                var result = children[i].node_update();
                switch(result) {
                    case BEHAVIORNODERESULT.SUCCESS:
                    case BEHAVIORNODERESULT.FALURE:
                        return result;
                        break;
                }
            }
            return BEHAVIORNODERESULT.CONTINUE;
        }	
	}
	
	return bn;
}

function behavior_node_wait() {
	var bn = new behavior_node();
	
	with(bn) {
		frames = room_speed;
		frames_remaining = frames;
		set_time = function(seconds) {
			frames = room_speed*seconds;
			frames_remaining = frames;
		}
		
		node_update = function () {
			frames_remaining--;
			
			if(frames_remaining <= 0) {
				frames_remaining = frames;
				return BEHAVIORNODERESULT.SUCCESS;
			}
			return BEHAVIORNODERESULT.CONTINUE;
        }
	}
	return bn;
}

function behavior_tree(parent_id) constructor {
	parent = parent_id;
    root = new behavior_node();
	with(root) {
		node_update = function() {
			if(array_length(children) > 0) {
			    return children[0].node_update();
			}
			return BEHAVIORNODERESULT.FALURE;
       }	
	}
	
	root.parent_obj = parent_id;
	
	function tree_update() {
		root.node_update();
	}
}