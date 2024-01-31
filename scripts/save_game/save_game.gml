function save_game() 
{
	
	var file_path_and_name_encoded = working_directory + global.file_save_encoded_name
	var file_path_and_name_decoded = working_directory + global.file_save_decoded_name

	// save current player position
	if instance_exists(obj_player)
	{
		var player_x = obj_player.x
		
		// if player is out of map (transitioning) push back on map
		if obj_player.x < 0 { player_x = 30 }
		if obj_player.x > room_width { player_x = room_width-30 }
		
		// update the player position for next log in
		global.current_player_x = player_x
		global.current_player_y = obj_player.y-12
	}
	
	////////// save the game (as temp ini) //////////
	ini_open(file_path_and_name_decoded) // if doesnt exist, automatically creates one
	
	// SAVE ALL GLOBALS TO FILE
	game_save_globals_to_ini()

	ini_close()

	////////// read temporary decoded ini file, then delete it //////////

	var file = file_text_open_read(file_path_and_name_decoded)
	var n = 1; 

	while not (file_text_eof(file)) // while hasnt reached end of file
	{
	    read[n] = file_text_read_string(file) // read each line and store as string array 
    
	    n += 1
	    file_text_readln(file) // go to the next line in the file
	}

	file_text_close(file) // CLOSE FILE

	file_delete(global.file_save_decoded_name)

	////////// encode the file and save it //////////
	file = file_text_open_write(file_path_and_name_encoded)

	for(var i = 1; i < n; i++)
	{
	    file_text_write_string(file,base64_encode(read[i]))
	    file_text_writeln(file)
	}

	file_text_close(file)
}
