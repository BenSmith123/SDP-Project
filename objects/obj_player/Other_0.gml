
// player fell off map
if y > room_height { instance_destroy(); exit }

if (x < 0)
{
	move_to_map(true)
	exit
}

if x > room_width
{
    move_to_map()
}

