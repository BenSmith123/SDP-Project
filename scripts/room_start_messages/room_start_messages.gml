function room_start_messages() {


	if room = room_test 
	{
	    // display_banner_message("Welcome, Press <S> or <SPACE> to attack")
	    // display_banner_message("Head right towards the next map >>")
	}
	
	if room == room_village
	{
		display_banner_message("Beginner's Village")
	}

	if room = room_cave_small
	{
	    // display_banner_message("<Map 2>")
	    display_banner_message("Seeker will follow you and help you by#picking up coins and warning you about any threats.")
	}

}
