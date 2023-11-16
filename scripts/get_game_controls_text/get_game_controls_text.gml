function get_game_controls_text()
{
	return @"
	------------------ CONTROLS ------------------
	F11 = go to next level
	F12 = reboot game
	<SHIFT> = reset game (delete saved progress)

	Right Click = spawn random AI (no bosses)

	--- PLAYER ---
	Left arrow (or A) = move left
	Right arrow (or D) = move right
	Up arrow (or W) = jump
	Down arrow = drop down
	Spacebar (or S) = attack
	F = teleport (if spellcaster)

	--- JOYSTICK ---
	Lstick  = move left/right
	A = jump
	B = attack
	Y = teleport
	Start = pause game

	P = pause
	Back (ANDROID) = pause
	Escape = close game

	Q = level up
	V = toggle game view (see entire map)
	G = toggle debug mode 
	L = move player to mouse (UNSTICK)

	1 = show ai detect distance
	2 = show ai XYmeeting
	3 = show ai main variables
	4 = show ai platform variables
	"
}