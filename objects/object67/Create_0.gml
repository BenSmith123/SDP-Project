    
    name = "Drone"
    level = 1
    maxhp = 10
    attack = 5
    defence = 0
    accuracy = 5
    
    aggressive = true // move/attack an enemy when enemy is unprovoked
    
    // sprites
    sprite_stand = spr_drone_walking
    sprite_walk = spr_drone_walking
    sprite_jump = spr_drone
    sprite_dead = spr_drone_dead
    sprite_attack = spr_drone_walking
    
    walkspeed = 4
    jump = 0
    heal_time = 4 // (seconds)
    heal_amount = 0 
    
    scr_ai_initialize() // call the script to initialise all the common variables of the AI 
    


