
function level_up() 
{
	if global.experience >= global.max_exp
	{
		// set exp to remaining exp after levelup
		global.experience = global.experience - global.max_exp
		
		// if you still have more exp, level again!
		if global.experience >= global.max_exp { level_up() }
	}

	// level limit
	if global.level = HIGHEST_LEVEL {
	    display_banner_message("You have reached the highest level")
	    exit
	}
    
	// legacy_level_up_increase_stats() // stats increase before customization
	level_up_increase_stats()
	
	global.level += 1 // level up!
    global.hp_last = global.max_hp
    
	if instance_exists(obj_player)
	{
		// level up effect!
	    instance_create(obj_player.x,obj_player.y-40,obj_levelup_fx)
	    obj_player.hp = global.max_hp // give the player full health
		
		update_player_stats()
	}
    
	// display message if there is one
	level_up_display_message()
	
	if global.level = 10
	{
	    instance_create(x,y,obj_pick_class)
	    instance_deactivate_object(obj_hud)
	}    

}


function level_up_increase_stats()
{
	// default stat increases per level (level 1~9)
	var level = global.level,
		stat_points = 0,
		max_exp = 10,
		max_hp = 0,
		attack = 0,
		defence = 0,
		accuracy = 0
		
	if level > 4 // level 5~10
	{
		stat_points = 8
		max_exp = 20
	}
		
	if level > 10 // level 11~20
	{
		stat_points = 10
		max_exp = 100
		attack = 10
		defence = 1
	}
	
	if level > 20 // 21~30
	{
		stat_points = 0 // start auto-assigning
		
		max_exp = 200
		max_hp = 5
		attack = 15
		accuracy = 2
		defence = 2
	}
	
	if level > 30 // 30+
	{
		max_exp = 400
		max_hp = 10
		attack = global.level // ? is this OP
		defence = 3
		accuracy = 4
	}

	global.stat_points += stat_points

	global.max_exp += max_exp
	
	global.max_hp += max_hp
	global.attack += attack
	global.defence += defence
	global.accuracy += accuracy
	
}




function legacy_level_up_increase_stats()
{

	if global.level >= 30
	{
		global.attack += global.level // TODO - is this OP, increase attack based on current level
		global.max_hp += 50
		global.max_exp += 150
		
		// global.attack += 10
		global.defence += 4
		global.accuracy += 4
		
		exit
	}
	
	
	if global.level >= 20
	{
		global.max_hp += 30
		global.max_exp += 100
		global.attack += global.level
		// global.attack += 5
		global.defence += 2
		global.accuracy += 2
		
		exit
	}
	
	// selecting a class will increase status
	if global.level == 10 
	{ 
		global.walk_speed += 1
		// global.jump += 1
	}

	if global.level >= 10
	{
		global.max_hp += 10
		global.max_exp += 20
		
		global.attack += 3
		global.defence += 1
		global.accuracy += 1
		exit
	}
	

	
	global.max_hp += 5
	global.max_exp += 20
    
	global.attack += 1
	// global.defence += 1
	// global.accuracy += 1
	// global.jump += 0.1
	// global.walk_speed += 0.1
}


