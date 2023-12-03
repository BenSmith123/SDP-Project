function load_game() {

	// loads the encoded file, decodes it, saves it as a new temporary file then 
	// reads the decoded file to load a game then deletes the decoded file


	////////// load encoded file //////////
	if file_exists(working_directory+"temp") // if file doesnt exists, game starts from nothing
	{
	    file = file_text_open_read(working_directory+"temp")
    
	    n = 1
	    while not (file_text_eof(file)) // while hasnt reached end of file
	    {
	        read[n] = file_text_read_string(file) // read each line and store as string array 
	        n += 1
	        file_text_readln(file) // go to the next line in the file
	    }
    
	    file_text_close(file) // close file
    

    
	////////// decode the encoded file and save to a temporary file //////////
	    file = file_text_open_write(working_directory+"temp_2")
    
	    for(i = 1; i < n; i++)
	    {
	        file_text_write_string(file,base64_decode(read[i]))
	        file_text_writeln(file)
	    }
    
	    file_text_close(file)
    
    
    
	////////// read the decoded temp file (load game) then delete the file //////////
    
	    if file_exists(working_directory + "temp_2")
	    {
	        ini_open(working_directory + "temp_2")
			
			global.inventory_array = json_parse(ini_read_string("INVENTORY", "inventory_array", "[]"))
			
			global.current_map_name = ini_read_string("GAME", "current_map_name", global.current_map_name)
			global.current_player_x = ini_read_real("GAME", "current_player_x", global.current_player_x)
			global.current_player_y = ini_read_real("GAME", "current_player_y", global.current_player_y)

	        global.current_kills = ini_read_real("STATS","current_kills",global.current_kills)
	        global.show_time = ini_read_real("STATS","kills",global.kills)
        
	        global.class = ini_read_string("PLAYER","class",global.class)
	        global.name = ini_read_string("PLAYER","name",global.name)
        
	        global.level = ini_read_real("PLAYER","level",global.level)
	        global.experience = ini_read_real("PLAYER","experience",global.experience)
	        global.max_exp = ini_read_real("PLAYER","max_exp",global.max_exp)
	        global.max_hp = ini_read_real("PLAYER","max_hp",global.max_hp) 
        
	        global.attack = ini_read_real("PLAYER","attack",global.attack)
	        global.defence = ini_read_real("PLAYER","defence",global.defence) 
	        global.accuracy = ini_read_real("PLAYER","accuracy",global.accuracy) 
	        global.jump = ini_read_real("PLAYER","jump",global.jump) 
	        global.walk_speed = ini_read_real("PLAYER","walk_speed",global.walk_speed) 
	        global.heal_time = ini_read_real("PLAYER","heal_time",global.heal_time)
	        global.heal_amount = ini_read_real("PLAYER","heal_amount",global.heal_amount)
        
	        global.coins = ini_read_real("PLAYER","coins",global.coins) 
			global.coins_stored = ini_read_real("PLAYER","coins_stored",global.coins_stored) 

			
	        ini_close()
        
	        file_delete("temp_2")
    
	    }


	}

}
