function scr_ai_initialize() 
{
	// initialize all common varibles for each ai
	// (called in create event of each AI)
	
	x_meet = sprite_get_height(sprite_index)/2 // distance for the x and enemy x for alignment (player above or below)
	y_meet = sprite_get_width(sprite_index)/2 // (player on same platform)
	// ^^^ divided by two because -height to +height is double the players size

	instance_create(x,y,obj_fx_teleport) // TODO - spawn fx

	friction = 0.1
	image_speed = 0.1
	
	// DEFAULTS (could be overridden by different mobs)
	can_be_knockedback = true
	attack_ability = false // projectiles, skills etc.
	attack_distance = 0 // distance before attacking player

	// IN-GAME
	hp = maxhp
	enemy = obj_player // nearest enemy

	mask_index = sprite_stand // keep mask the same regardless of animation etc.
	image_xscale = choose(-1,1) // which way to start walking
	attacker = "" // player that attacked
	state = "Spawn.." // debug
	can_shoot = true
	can_turn = true
	stay = false // done move (while fighting, etc)
	hurt = false // ? unused atm
	show_hp = false // only show hp when provoked
	healthbar_colour = HealthColour.Green
	is_on_ground = false
	has_been_attacked = false
	is_left_of_enemy = false
	facing_left = false
	
	//tag_y = round((sprite_get_height(sprite_index)/2)) // get the mask height so it can draw the tags below (name, hp)
	// ^ tag_y doesn't really work like this since some sprites have added space to give the floating effect
	
	attacking = false // for sprite managing
	soft_kill = false // when ai is not killed by the player, don't reward
	speed_in_direction = 0 // hspeed or negative hspeed (depending on direction)

	// debug 
	show_detect_distance = false
	show_xy_meeting = false
	show_main_variables = false
	show_platform_variables = false


}
