
function player_set_class_attributes(assign_weapons = false)
{
	
	melee_attack = global.class == "Beginner" || global.class = "Fighter"
	
	// projectile overrides for classes that don't rely on items
	if global.class == "Hunter"
	{
		sprite_projectile = spr_projectile_arrow_0
	}
	
	if global.class == "Spellcaster"
	{
		sprite_projectile = spr_bullet_2
	}
	
	
	// if player changes class, give correct equip
	function player_get_base_class_equip()
	{
		switch(global.class)
		{
			case "Fighter": return ItemId.BasicSword
			case "Hunter": return ItemId.BasicBow
			case "Spellcaster": return ItemId.BasicSword // TODO!
			case "Ninja": return ItemId.BasicShuriken
		}
	}
	
	if assign_weapons
	{
		global.equip_item_id_primary = player_get_base_class_equip()
	}

}


