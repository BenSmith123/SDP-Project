
function level_up_increase_stats()
{

	if global.level > 40 {
		global.attack += global.level // TODO - is this OP, increase attack based on current level
	}
	
	if global.level >= 30
	{
		global.max_hp += 50
		global.max_exp += 150
		
		global.attack += 10
		global.defence += 4
		global.accuracy += 4
		
		exit
	}
	
	
	if global.level >= 20
	{
		global.max_hp += 30
		global.max_exp += 100
		
		global.attack += 5
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

function scr_level_up() 
{
	if global.experience >= global.max_exp
	{
		// set exp to remaining exp after levelup
		global.experience = global.experience - global.max_exp
		
		// if you still have more exp, level again!
		if global.experience >= global.max_exp { scr_level_up() }
	}

	// level limit
	if global.level = HIGHEST_LEVEL {
	    display_banner_message("You have reached the highest level")
	    exit
	}
    
	global.level += 1 // level up!
    
	level_up_increase_stats()
    
	if instance_exists(obj_player)
	{
		// level up effect!
	    instance_create(obj_player.x,obj_player.y-40,obj_levelup_fx)
	    obj_player.hp = global.max_hp // give the player full health
        
	    // update the players attributes
	    obj_player.attack = global.attack
	    obj_player.defence = global.defence
	    obj_player.accuracy = global.accuracy
	    obj_player.jump = global.jump
	    obj_player.walk_speed = global.walk_speed
	}
    
	// display message if there is one
	level_up_display_message()
	
	if global.level = 10
	{
	    instance_create(x,y,obj_pick_class)
	    instance_deactivate_object(obj_hud)
	}    

}
