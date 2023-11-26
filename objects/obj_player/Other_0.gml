
if (x < 0)
{
	// TODO - goto previous room
	exit
}

if x > room_width
{
    move_to_next_map()
}
else
{
    instance_destroy()
}


