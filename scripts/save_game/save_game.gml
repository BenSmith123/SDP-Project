function save_game() 
{
	
	var file_path_and_name_encoded = working_directory + global.file_save_encoded_name
	var file_path_and_name_decoded = working_directory + global.file_save_decoded_name

	if instance_exists(obj_player)
	{
		var player_x = obj_player.x
		
		// if player is out of map (transitioning) push back on map
		if obj_player.x < 0 { player_x = 30 }
		if obj_player.x > room_width { player_x = room_width-30 }
		
		// update the player position for next log in
		global.current_player_x = player_x
		global.current_player_y = obj_player.y
	}
	
	////////// save the game (as temp ini) //////////
	ini_open(file_path_and_name_decoded) // if doesnt exist, automatically creates one

	ini_write_string("INVENTORY","inventory_array",json_stringify(global.inventory_array))

	ini_write_string("GAME","current_map_name",global.current_map_name)
	ini_write_string("GAME","current_player_x",global.current_player_x)
	ini_write_string("GAME","current_player_y",global.current_player_y)

	ini_write_real("STATS","mob_kills_current",global.mob_kills_current)
	ini_write_real("STATS","mob_kills",global.mob_kills)

	ini_write_string("PLAYER","player_skin_id",global.player_skin_id)
	ini_write_string("PLAYER","class",global.class)
	ini_write_string("PLAYER","name",global.name)
	ini_write_real("PLAYER","level",global.level)
	ini_write_real("PLAYER","experience",global.experience)
	ini_write_real("PLAYER","max_exp",global.max_exp)
	ini_write_real("PLAYER","hp_last",global.hp_last)
	ini_write_real("PLAYER","max_hp",global.max_hp)
	ini_write_real("PLAYER","stat_points",global.stat_points)
	
	ini_write_real("PLAYER","equip_damage_multiplier",global.equip_damage_multiplier)
	ini_write_real("PLAYER","equip_item_id_primary",global.equip_item_id_primary)
	ini_write_real("PLAYER","equip_item_id_secondary",global.equip_item_id_secondary)


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
