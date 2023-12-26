function player_controls() 
{

	// WINDOWS AND VIRTUAL KEYS
	if keyboard_check(ord("A")) { move_left = true }
	if keyboard_check(ord("D")) { move_right = true }
	if keyboard_check(ord("W")) { move_jump = true }
	if keyboard_check(ord("S")) { move_jump_down = true }

	
	if keyboard_check(vk_left) { move_left = true }
	if keyboard_check(vk_right) { move_right = true }
	if keyboard_check(vk_up) { move_jump = true }
	if keyboard_check(vk_down) { move_jump_down = true }
	
	
	//if keyboard_check_pressed(ord("S")) { move_attack = true }
	if keyboard_check_pressed(ord("I"))
	{
		if instance_exists(obj_inventory) { instance_destroy(obj_inventory); exit }
		instance_create(0, 0, obj_inventory)
	}

	// ALTERNATE KEYS
	if keyboard_check(vk_space) { move_attack = true }
	if keyboard_check_pressed(ord("F")) { move_temp = true }



	// call the scripts for whatever wariable active
	// variables have to be used for the mobile virtual keys to work
	if move_left = true { player_move_horizontally() }
	if move_right = true { player_move_horizontally() }
	if move_jump = true { player_jump() }
	if move_jump_down = true { player_jump_down() }

	if move_attack = true { player_attack() }

	if move_temp = true { scr_teleport() } // teleport skill

	// player will stop moving when key is released

	move_left = false
	move_right = false
	move_jump = false
	move_jump_down = false
	move_attack = false

	move_temp = false // debug

}
