image_speed = 0
//depth = ObjectDepth.Tiles

dir = -1 // up
stay = false

// set and overridden in VARIABLES
y_top = ystart-200 // highest point before stopping
y_bottom = ystart

change_direction = function()
{
	stay = true
	dir = -dir
	alarm[0] = 120
}