function scr_ai_turn_around() 
{	
	state = "Turn around"

	if can_turn == true
	{
	    can_turn = false
	    alarm[2] = 15

	    image_xscale = -image_xscale
	}
}
