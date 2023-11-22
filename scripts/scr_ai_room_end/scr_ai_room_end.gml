function scr_ai_room_end() 
{
	turn_distance = 40

	if (x < 0+turn_distance or x > room_width-turn_distance)
	{
	    ai_turn_around()
	}
}
