function set_classes() {

	sprite_projectile = spr_test
	melee_attack = false

	if global.class = "Beginner"
	{
	    melee_attack = true
		item_on_back_sprite = spr_carry_sword
	}

	if global.class = "Hunter" 
	{
	    melee_attack = false
	    sprite_projectile = spr_bullet_4
		item_on_back_sprite = spr_carry_bow
	}

	if global.class = "Fighter" 
	{
	    melee_attack = true
		item_on_back_sprite = spr_carry_sword
	}

	if global.class = "Ninja" 
	{
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
	    melee_attack = false
	    sprite_projectile = spr_bullet_2
	}



}
