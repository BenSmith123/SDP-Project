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

	// ALTERNATE KEYS
	if keyboard_check(vk_space) { move_attack = true }
	if keyboard_check_pressed(ord("F")) { move_temp = true }
	
	if keyboard_check_pressed(ord("I"))
	{
		event_perform_object(obj_button_open_inventory, ev_other, ev_user1)
	}

	// call the scripts for whatever wariable active
	// variables have to be used for the mobile virtual keys to work
	if move_left { player_move_horizontally() }
	if move_right { player_move_horizontally() }
	if move_jump { player_jump() }
	if move_jump_down { player_jump_down() }

	if move_attack
	{
		// prevent attack animation if trying to interact with NPC
		var mobile_near_npc = global.is_mobile && instance_exists(obj_npc_speech_bubble)
		if mobile_near_npc
		{
			// disable attacking for a split second since finger may still be on the attack button
			can_attack = false
			alarm[0] = 15 // can attack again
		}
		
		var is_moving = move_left || move_right
		if !is_moving && !mobile_near_npc
		{
			player_attack()
		}
	}

	//if move_temp { teleport() } // teleport skill

	// player will stop moving when key is released

	move_left = false
	move_right = false
	move_jump = false
	move_jump_down = false
	move_attack = false

	move_temp = false // debug

}
