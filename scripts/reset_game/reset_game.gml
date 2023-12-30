function reset_game() 
{
	file_delete(global.file_save_encoded_name)
    
	initialise_stored_globals()
	
	//room_goto(room_menu)
		
	game_restart()
}
