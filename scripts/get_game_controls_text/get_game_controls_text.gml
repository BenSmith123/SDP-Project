function get_game_controls_text()
{
	return @"
	------------------ CONTROLS ------------------
	
	P = pause
	Escape = close game
	
	F10 = previous map
	F11 = next map
	F12 = reset game (keep saved game)
	<SHIFT> = reset game (delete saved progress)

	--- PLAYER ---
	Left arrow (or A) = move left
	Right arrow (or D) = move right
	Up arrow (or W) = jump
	Down arrow = drop down
	Spacebar (or S) = attack
	F = teleport (if spellcaster)

	--- DEBUG ---
	Right Click = spawn AI

	Q = level up
	V = toggle game view (see entire map)
	G = toggle debug mode 
	L = teleport to mouse (UNSTICK)

	1 = show ai detect distance
	2 = show ai XYmeeting
	3 = show ai main variables
	4 = show ai platform variables
	"
}