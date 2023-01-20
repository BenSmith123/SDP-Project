

// GET THIS WORKING
//if scr_ai_meet_horizontal_y() = true // if enemy is on same playform
{

    if (distance_to_object(enemy) < 100)
    {    
        state = "Attack"
    
        stay = true
        if x > enemy.x {image_xscale = -1} else {image_xscale = 1} // face enemy
        scr_ai_attack()
    }
    else
    { // GET RID OF ELSE STATEMENT??
        stay = false
    }
    

}

