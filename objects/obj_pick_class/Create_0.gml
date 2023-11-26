
depth = ObjectDepth.HUD
image_alpha = 0
fade_out = false

alarm[0] = 180// wait 3 sec before pausing the game
alarm[1] = 120 // fade out

with (ai_parent)
{
	soft_kill = true
	instance_destroy() // kill all existing AI
}

