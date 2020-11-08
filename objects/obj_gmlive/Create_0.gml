#macro live_enabled 1

// change IP/port here if you connect to remote gmlive-server:
live_init(1, "http://localhost:5100", "");

live_blank_object = obj_blank;
live_blank_room = rm_blank;
live_room_updated = scr_room_updated;