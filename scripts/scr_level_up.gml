
if global.experience >= global.max_exp // if player has leveled up
{

    global.experience = global.experience - global.max_exp // handles exp overflow

    // level limit    
    if global.level = HIGHEST_LEVEL {
        display_banner_message("You have reached the highest level")
        exit
    }
    
    global.level += 1 // level up!
    
    // update the stats
    global.max_hp += 7
    
    global.attack += 2
    global.defence += 2
    global.accuracy += 0.5
    global.jump += 0.1
    global.walk_speed += 0.1
    
    if global.level > 10 {global.attack += 2}
    
    // player effects and heal
    if instance_exists(obj_player)
    {
        instance_create(obj_player.x,obj_player.y-40,obj_levelup_fx)
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
        instance_create(x,y,obj_pick_class)
        instance_deactivate_object(obj_hud)
    }    

    
    
    if global.level < 10 
    {global.max_exp += 5 exit}
    
    if global.level < 20
    {global.max_exp += 10 exit}
    
    if global.level < 30
    {global.max_exp += 15 exit}
    //{global.max_exp += round(global.max_exp*0.05)}

    
    
}


