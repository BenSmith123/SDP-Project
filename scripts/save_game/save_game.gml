function save_game() 
{

	if instance_exists(obj_player)
	{
		// update the player position for next log in
		global.current_player_x = obj_player.x
		global.current_player_y = obj_player.y
	}
	
	////////// save the game (as temp ini) //////////
	ini_open(working_directory + "temp_2") // if doesnt exist, automatically creates one

	ini_write_string("INVENTORY","inventory_array",json_stringify(global.inventory_array))

	ini_write_string("GAME","current_map_name",global.current_map_name)
	ini_write_string("GAME","current_player_x",global.current_player_x)
	ini_write_string("GAME","current_player_y",global.current_player_y)

	ini_write_real("STATS","current_kills",global.current_kills)
	ini_write_real("STATS","kills",global.kills)

	ini_write_string("PLAYER","class",global.class)
	ini_write_string("PLAYER","name",global.name)
	ini_write_real("PLAYER","level",global.level)
	ini_write_real("PLAYER","experience",global.experience)
	ini_write_real("PLAYER","max_exp",global.max_exp)
	ini_write_real("PLAYER","max_hp",global.max_hp)

	ini_write_real("PLAYER","attack",global.attack)
	ini_write_real("PLAYER","defence",global.defence)
	ini_write_real("PLAYER","accuracy",global.accuracy)
	ini_write_real("PLAYER","jump",global.jump)
	ini_write_real("PLAYER","walk_speed",global.walk_speed)
	ini_write_real("PLAYER","heal_time",global.heal_time)
	ini_write_real("PLAYER","heal_amount",global.heal_amount)
	ini_write_real("PLAYER","coins",global.coins)
	ini_write_real("PLAYER","coins_stored",global.coins_stored)


	ini_close()


	////////// read temporary decoded ini file, then delete it //////////

	var file = file_text_open_read(working_directory+"temp_2")
	var n = 1; 

	while not (file_text_eof(file)) // while hasnt reached end of file
	{
	    read[n] = file_text_read_string(file) // read each line and store as string array 
    
	    n += 1
	    file_text_readln(file) // go to the next line in the file
	}

	file_text_close(file) // CLOSE FILE

	file_delete("temp_2")

	////////// encode the file and save it //////////
	file = file_text_open_write(working_directory+"temp")

	for(var i = 1; i < n; i++)
	{
	    file_text_write_string(file,base64_encode(read[i]))
	    file_text_writeln(file)
	}

	file_text_close(file)
}
