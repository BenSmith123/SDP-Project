
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
	
	mob_drop()
    
    scr_level_up() // check for level up
}

with obj_heal_text instance_destroy() // TODO - doesn't this destroy any mob text?
