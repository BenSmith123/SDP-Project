function reset_game() {

	//if file_exists("temp")
	{
	    file_delete("temp")
    
	    initialise_stored_globals()
    
	    room_goto(room_menu)
		
	    //game_restart()
	}
    
}
