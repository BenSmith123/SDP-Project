
    // DEAD BODY FOR AI
    dead_body = instance_create(x,y,obj_ai_dead) // create body at x,y position
    dead_body.sprite_index = sprite_dead // set the sprite of the AI dead body
    dead_body.image_xscale = image_xscale // face the dead body sprite the same way as AI was facing
    
    dead_body.hspeed = hspeed // knock back ai body on last hit (continue physics)
    dead_body.vspeed = vspeed 
    
    dead_body.friction = friction // knock back as far as the ai would have already been knocked back
    
    
    // if not killed by player, dont create coins, add to stats or give experience
    if soft_kill = true 
    {
        global.current_kills += 1 // add count to statistics
        global.experience += 10 // add experience to the player
        
        scr_level_up() // run the level up script (check player for level up)
        
        // CREATE COINS
        coin_num = irandom_range(0,10) // generate a random number between 0-10
        repeat(coin_num) // create the num of coins from the random number ^^
        {
            coin = instance_create(x,y,obj_coin) // create coin object at current position
            // make the coins spread evenly/randomly
            coin.hspeed = irandom_range(-3,3) // move the coin left or right (random range for different coin positions)
            coin.vspeed = irandom_range(-2,-4) // move the coin up
        }
    }
    
    
    if !is_on_screen() 
    {
        // if this object is not on screen, freeze it
    }
    
    with obj_heal_text instance_destroy() // delete the healing text object if the AI was healing




