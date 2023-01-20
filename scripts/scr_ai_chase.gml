

if distance_to_object(enemy) <= detect_distance
{

    if (scr_ai_meet_horizontal_y() = true)
    {
        {
            state = "Chase enemy"
            stay = false 
            
            if x < enemy.x
            {
                image_xscale = 1
            }
            else
            {
                image_xscale = -1
            }
        }
    }
    else
    {
        if not (place_free(x,y+1))
        {
            vspeed = -jump
        }
    }
}
