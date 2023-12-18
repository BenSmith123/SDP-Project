function reset_game() 
{
	file_delete("temp")
    
	initialise_stored_globals()
	
	//room_goto(room_menu)
		
	game_restart()
}
