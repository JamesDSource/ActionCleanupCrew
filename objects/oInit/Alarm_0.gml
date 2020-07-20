// save file
if(!file_exists(SAVEFILENAME)) init_save_file();
else load();

window_center();
room_goto_next();