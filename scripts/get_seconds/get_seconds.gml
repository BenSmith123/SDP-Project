///@description - returns the game frames per n second(s)
function get_seconds(n)
{
	return n * 60 // room_speed
}

///@description - input numbers in seconds and returns a random number betweeen but in frames
function irandom_range_frames(secMin, secMax)
{
	return irandom_range(secMin, secMax) * 60
}