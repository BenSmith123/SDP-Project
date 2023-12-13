
// face the direction its moving
if hspeed != 0
{
	image_xscale = hspeed < 0 
	? -1 
	: 1
}

if stay
{
	vspeed = 0
}

var coin = instance_nearest(x,y,obj_coin)
if instance_exists(coin)
{
	if distance_to_object(coin) < 80
	{
		stay = true
		var coin_pickup_speed = 8
		coin.x += coin.x < x ? coin_pickup_speed : -coin_pickup_speed
		coin.y += coin.y < y ? coin_pickup_speed : -coin_pickup_speed
			
		if place_meeting(x,y, coin)
		{
			instance_destroy(coin)
		}
	}
	else
	{
		stay = false
		move_towards_point(coin.x,coin.y-30, move_speed)
	}
}
else
{
	if !instance_exists(obj_player) { exit }
	
	if distance_to_object(obj_player) < 100
	{
		stay = true
		hspeed = 0
	}
	else
	{
		stay = false
		move_towards_point(obj_player.x,obj_player.y-40, move_speed)
	}
}
