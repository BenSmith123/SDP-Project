
depth = ObjectDepth.HUD-10

y_start_pos = 94 // HEIGHT - 10

start_fade = false
alarm[0] = 120

// set by creation script
text = ""
repeat_count = 1

repeat_message = function()
{
	repeat_count++
	image_alpha = 1
	start_fade = false
	alarm[0] = 120
}