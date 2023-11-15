
if other.solid = true
{
    if (vspeed > 0 && !place_free(x,y+vspeed))
    {
        move_contact_solid(270,2)
    } 
    
    vspeed = 0
}


