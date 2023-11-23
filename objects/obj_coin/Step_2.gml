
if place_meeting(x,y,obj_player)
{
	global.coins += 1
	instance_create(x,y,obj_fx_coin_pickup)
	instance_destroy()
}

basic_collision_and_gravity()
