
if not (place_free(x,y+1)) // if on ground 
{
    //if not (position_empty(x+block_distance,y)) // block to the left or right
    if place_meeting(x+block_distance,y,obj_block)
    {
    
        stay = false
        
        //if // if the ai can jump
        
        if  jump > 0 and place_free(x+block_distance,y+jump_block_height) // if block to the left isnt too high
        {
            state = "Jump block"
            vspeed = -jump
            hspeed = speeed
        }
        
        else // if cant jump over block, turn around
        {
            state = "Turn around"
            scr_ai_turn_around()
        }
    }
}

