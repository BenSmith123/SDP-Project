function scr_player_movement() {

	/***
	half the speed of player when walking up a slope ??
	if place_meeting(x,y+1,obj_block) 
	{walk_speed = start_speed}
	else
	{walk_speed = start_speed/1.5}
	***/

	// WINDOWS AND VIRTUAL KEYS
	if keyboard_check(ord("A")) {move_left = true} // left
	if keyboard_check(ord("D")) {move_right = true} // right
	if keyboard_check_pressed(ord("W")) {move_jump = true} // up
	if keyboard_check_pressed(ord("S")) {move_attack = true} // attack

	// ALTERNATE KEYS
	if keyboard_check(vk_left) {move_left = true} // left
	if keyboard_check(vk_right) {move_right = true} // right
	if keyboard_check_pressed(vk_up) {move_jump = true} // up
	if keyboard_check_pressed(vk_space) {move_attack = true}


	if keyboard_check_pressed(ord("F")) {move_temp = true}



	// call the scripts for whatever wariable active
	// variables have to be used for the android virtual keys to work
	if move_left = true {scr_move_left()}
	if move_right = true {scr_move_right()}
	if move_jump = true {scr_jump()}
	if move_attack = true {scr_attack_player()}

	if move_temp = true {scr_teleport()} // teleport skill

	// player will stop moving when key is released

	move_left = false
	move_right = false
	move_jump = false
	move_attack = false

	move_temp = false // debug




}
