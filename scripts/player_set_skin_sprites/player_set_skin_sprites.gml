
///@description - called by the player - set all sprites
function player_set_skin_sprites()
{
	// TODO - naming convention for sprite files
	// this way the skins can be applied based on the PlayerSkin Id:
	// spr_skin_{skinId}_stand = spr_skin_1_stand
	
	//enum PlayerSkinId
	
	function get_sprite(action)
	{	
		return asset_get_index($"spr_skin_{global.player_skin_id}_{action}")
	}
	
	function get_attack_action()
	{
		if global.class = "Fighter" || global.class = "Beginner" return "swing"
		if global.class = "Ninja" || global.class == "Spellcaster" return "throw_2"
		if global.class = "Spellcaster" return "throw"
		if global.class = "Hunter" return "shoot"
		
		return "swing"
	}
	
	sprite_stand = get_sprite("stand")
	sprite_walk = get_sprite("walk")
	sprite_jump = get_sprite("jump")
	sprite_jump_in_direction = get_sprite("jump") // jump_in_direction
	sprite_climb = get_sprite("climb")
	sprite_dead = get_sprite("dead")

	sprite_attack = get_sprite(get_attack_action())
	
	player_set_weapon_sprites()
	
	sprite_index = sprite_stand
}


///@description sets the projectile/weapon attack sprites based on equipped items
function player_set_weapon_sprites()
{
	if global.equip_item_id_primary == 0 { exit }
	
	// TODO - secondary item
	var item = get_item(global.equip_item_id_primary)
			
	// if item.class != global.class { exit } // somehow changed class and haven't updated equip?
	
	// note - bow can have both animation and projectile

	// these might still be undefined!
	sprite_carrying = item.sprite_carrying
	sprite_projectile = item.sprite_projectile
	sprite_weapon_attack = item.sprite_attacking
}