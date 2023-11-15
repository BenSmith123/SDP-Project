
if hurt = true
{
    hurt = false
    colour = c_white
}

if (vspeed > 0 and not place_free(x,y+vspeed)) {move_contact_solid(270,2)}

vspeed = 0

