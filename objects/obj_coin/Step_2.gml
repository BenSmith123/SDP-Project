
// TODO - replace this code & just create an effect instead?
if place_meeting(x,y,obj_player)
{
	global.coins += 1
	instance_create(x,y,obj_fx_coin_pickup)
	instance_destroy()
}

if (speed == 0) { exit }

apply_gravity()

if !place_empty(x+hspeed,y, obj_block) { hspeed = 0 }

if (vspeed > 0 && !place_empty(x,y+1, obj_block))
{
    move_contact_all(270,0)
	vspeed = 0
} 







