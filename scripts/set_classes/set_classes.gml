function set_classes() {

	sprite_projectile = spr_test
	melee_attack = false

	if global.class = "Beginner"
	{
	    attack_sprite = spr_player_attack_4
	    melee_attack = true
	}

	if global.class = "Hunter" 
	{
	    attack_sprite = spr_player_attack_3
	    melee_attack = false
	    sprite_projectile = spr_bullet_4
	}

	if global.class = "Fighter" 
	{
	    attack_sprite = spr_player_attack_4
	    melee_attack = true
	}

	if global.class = "Ninja" 
	{
	    attack_sprite = spr_player_attack
	    melee_attack = false
	    sprite_projectile = spr_bullet
	}

	if global.class = "Spellcaster" 
	{
	    attack_sprite = spr_player_attack_2
	    melee_attack = false
	    sprite_projectile = spr_bullet_2
	}


    
    
    



}
