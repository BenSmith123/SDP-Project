
// TODO - replace this code & just create an effect instead?
if place_meeting(x,y,obj_player)
{
	if picked_up = false 
	{
	    global.coins += 1
    
	    sprite_index = spr_coin_fx
    
	    image_xscale = 0.2
	    image_yscale = 0.2

	    picked_up = true
	}
}

if (speed == 0) { exit }

apply_gravity()

if !place_empty(x+hspeed,y, obj_block) { hspeed = 0 }

if (vspeed > 0 && !place_empty(x,y+1, obj_block))
{
    move_contact_all(270,1)
	vspeed = 0
} 







