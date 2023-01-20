
if global.experience >= global.max_exp // if player has leveled up
{

    global.experience = global.experience - global.max_exp // handles exp overflow

    // level limit    
    if global.level == HIGHEST_LEVEL {
        display_banner_message("You have reached the highest level")
        exit
    }
    
    global.level += 1 // level up!
    
    // update state! - based on the previous increment of stats
    global.max_exp += global.lvl_incr_max_exp
    
    global.max_hp += global.lvl_incr_max_hp
    global.attack += global.lvl_incr_attack
    global.defence += global.lvl_incr_defence
    global.accuracy += global.lvl_incr_accuracy
    global.jump += global.lvl_incr_jump
    global.walk_speed += global.lvl_incr_walk_speed
    
    // each level up, increase the level up-increase stats 
    global.lvl_incr_max_exp += round(2.5)
    
    global.lvl_incr_max_hp += 1
    global.lvl_incr_attack += 0.5
    global.lvl_incr_defence += 0.5
    global.lvl_incr_accuracy += 0.01
    global.lvl_incr_jump += 0.005
    global.lvl_incr_walk_speed += 0.005
    
    
    //if global.level > 10 {global.attack += 2}
    
    // update the current player object stats
    if instance_exists(obj_player)
    {
        instance_create(obj_player.x,obj_player.y-40,obj_levelup_fx) // levelup effects
        
        obj_player.max_hp = global.max_hp
        obj_player.hp = obj_player.max_hp // give the player full health
        
        // update the players attributes
        obj_player.attack = global.attack
        obj_player.defence = global.defence
        obj_player.accuracy = global.accuracy
        obj_player.jump = global.jump
        obj_player.walk_speed = global.walk_speed
    }
    
    
    
    if global.level = 5
    {
        display_banner_message("Congratulations on reaching level 5#[+100 coins]")
        global.coins += 100
    }
       
    if global.level = 6
    {
        display_banner_message("Once you are level 10 you may#pick a class")
    }
    
    if global.level = 9
    {
        display_banner_message("Next time you level up you may#pick a class")
    }
    
    if global.level = 10
    {
        if instance_exists(obj_player)
        instance_create(x,y,obj_pick_class)
        instance_deactivate_object(obj_hud)
    }    
    
}


