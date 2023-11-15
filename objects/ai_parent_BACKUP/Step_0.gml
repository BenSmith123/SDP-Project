

if place_free(x,y+1){gravity = 0.5}
else {gravity = 0}
vspeed = min(12,vspeed)

if hp <= 0
{
    if attacker = "P1"
    {
        global.p1_likes += 1
    }
    
    if attacker = "P2"
    {
        global.p2_likes += 1
    }
    dead_body = instance_create(x,y,obj_mob_marker_dead)
    dead_body.sprite_index = sprite_die
    dead_body.image_xscale = dir
    instance_destroy()
}

if hurt = false
{
    if stay = 0
    {
        if dir = -1
        {
            hspeed = -speeed
        }
        if dir = 1
        {
            hspeed = speeed
        }
    }
    else
    {
        hspeed = 0
    }
}

if hurt = false
{
    if dir = -1
    {
        if not place_free(x-13,y)
        {
            if place_free(x-13,y-24)
            {
                vspeed = jump
                hspeed = -speeed
            }
            else
            {
                dir = 1
            }
        }
    }
        
    if dir = 1
    {
        if not place_free(x+13,y)
        {
            if place_free(x+13,y-24)
            {
                vspeed = jump
                hspeed = speeed
            }
            else
            {
                dir = -1
            }
        }
    }
}




