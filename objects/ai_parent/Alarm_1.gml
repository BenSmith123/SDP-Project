///@description idle

if !is_on_ground
{
	// try again sooner if jumping or whatever
	alarm[1] = get_seconds(2) 
	exit
}

alarm[1] = irandom_range_frames(6, 12) // reset idle

if !aggressive && !has_been_attacked
{
	stay = true
	var secMin = get_seconds(3)
	var secMax = get_seconds(8)
	alarm[5] = irandom_range(secMin, secMax)
}