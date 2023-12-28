function get_game_controls_text()
{
	return @"
	------------------ CONTROLS ------------------
	
	P = pause
	Escape = close game
	
	F1 = show all controls
	F2 = toggle full camera
	
	F9 = full screen (max resolution)
	F10 = previous map
	F11 = next map
	F12 = reboot game (keep saved game)

	--- PLAYER ---
	Movement = WASD or arrow keys
	Attack = Spacebar
	F = teleport (if spellcaster)
	
	I = Open inventory
	"
}

function get_game_debug_controls_text()
{
	return @"
	
	--- DEBUG ---
	(GM only)

	1 = toggle debug mode
	2 = teleport player to mouse
	3 = level up

	6 = spawn mob
	7 = show ai main variables
	8 = show ai detect distance
	9 = show ai XYmeeting
	
	M = toggle mobile/desktop
	0 = hard reset (delete saved progress)
	"
	
}

	
	//4 = hp & damage boost