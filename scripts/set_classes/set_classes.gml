function set_classes() {

	sprite_projectile = spr_test
	melee_attack = false

	if global.class = "Beginner"
	{
	    sprite_attack = spr_player_attack_4
	    melee_attack = true
		item_on_back_sprite = spr_carry_sword
	}

	if global.class = "Hunter" 
	{
	    sprite_attack = spr_player_attack_3
	    melee_attack = false
	    sprite_projectile = spr_bullet_4
		item_on_back_sprite = spr_carry_bow
	}

	if global.class = "Fighter" 
	{
	    sprite_attack = spr_player_attack_4
	    melee_attack = true
		item_on_back_sprite = spr_carry_sword
	}

	if global.class = "Ninja" 
	{
	    sprite_attack = spr_player_attack
	    melee_attack = false
	    sprite_projectile = spr_bullet
		
		// TODO - apply to other classes
		if global.equip_item_id_primary != 0
		{
			var item = get_item(global.equip_item_id_primary)
			
			if item.class == global.class
			{
				sprite_projectile = item.sprite // TODO - item sprite should differ from projectile sprite
			}
		}
	}

	if global.class = "Spellcaster" 
	{
	    sprite_attack = spr_player_attack_2
	    melee_attack = false
	    sprite_projectile = spr_bullet_2
	}



}
