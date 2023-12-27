
depth = ObjectDepth.Projectile
image_speed = 0

// set by AI
attack = 0
accuracy = 0

shoot_straight = function(xscale, x_speed)
{
	image_xscale = xscale
	hspeed = x_speed
}

shoot_in_direction = function(_speed, _direction)
{
	speed = _speed
	direction = _direction
	image_angle = _direction
}