
///@description - called by the player - set all sprites
function player_set_skin_sprites()
{
	// TODO - naming convention for sprite files
	// this way the skins can be applied based on the PlayerSkin Id:
	// spr_player_{skinId}_stand = spr_player_1_stand
	
	//enum PlayerSkinId
	
	function get_sprite(action)
	{
		var player_skin_id = 0 // TODO make this global
		return asset_get_index($"spr_player_{player_skin_id}_{action}")
	}
	
	function get_attack_action()
	{
		if global.class = "Fighter" || global.class = "Beginner" return "swing"
		if global.class = "Ninja" || "Spellcaster" return "throw_2"
		if global.class = "Spellcaster" return "throw"
		if global.class = "Hunter" return "shoot"
		
		return "swing"
	}
	
	sprite_stand = get_sprite("stand")
	sprite_walk = get_sprite("walk")
	sprite_jump = get_sprite("jump")
	sprite_jump_in_direction = get_sprite("jump") // jump_in_direction
	sprite_climb_rope = get_sprite("climb_ladder") // climb_rope
	sprite_climb_ladder = get_sprite("climb_ladder")
	sprite_dead = get_sprite("dead")

	sprite_attack = get_sprite(get_attack_action())
}

