
// create the dead body for AI
var dead_body = instance_create(x,y,obj_ai_dead)
dead_body.sprite_index = sprite_dead
dead_body.image_xscale = -image_xscale
dead_body.hspeed = hspeed // knock back ai body on last hit
dead_body.vspeed = vspeed
dead_body.friction = friction // knock back as far as the ai would have already been knocked back



//if soft_kill = true // if not killed by player (no reward)
{
    global.current_kills += 1
    global.experience += experience
	
	log_player_message($"+{experience} experience")
    
    scr_level_up() // check for level up
    
    // create coins
    var coin_num = irandom_range(0,10)
    repeat(coin_num)
    {
        var coin = instance_create(x,y,obj_coin)
        coin.hspeed = irandom_range(-3,3)
        coin.vspeed = irandom_range(-2,-4)
    }
}

with obj_heal_text instance_destroy()
