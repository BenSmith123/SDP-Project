function scr_attack_player() {

	if can_attack = true
	{

	    damage = attack-irandom_range(0,accuracy) // calculate damage
   
	    alarm[0] = 30 // can shoot again
	    alarm[1] = 20 // for attacking sprite
    
	    attacking = true
	    can_attack = false
    
	    image_index = 0 // restart the animation
	    image_speed = 0.15
    
	    enemy = instance_nearest(x,y,ai_parent)
    
    
	/////////////////// MELEE ATTACKS ///////////////////
	    if melee_attack = true
	    {
	        // y position meeting
	        if y > enemy.y-20{ if y < enemy.y+20 {
    
	        if image_xscale = -1 // facing left
	        {
	            if enemy.x <= x // enemy is on left
	            {
	                if enemy.x > x-120 // range for hitting
	                {
	                    alarm[9] = 15//damage_mob() // need to fix delay with attacking
	                }
	            }
	        }
        
	        if image_xscale = 1
	        {
	            if enemy.x > x
	            {
	                if enemy.x < x+120
	                {
	                    alarm[9] = 15//damage_mob()
	                }
	            }
	        }
        
	        exit // dont create projectile
        
	        }}
	    }
    
	    else
	    {

	////////////////////// PROJECTILES //////////////////////

	    if image_xscale = -1 
	    {
	        bullet = instance_create(x-20,y,obj_bullet_player)
	        bullet.hspeed = -14
	        bullet.image_xscale = -1
	    }
    
	    if image_xscale = 1 
	    {
	        bullet = instance_create(x+20,y,obj_bullet_player)
	        bullet.hspeed = 14
	        bullet.image_xscale = 1
	    }
    
	    bullet.damage = damage
	    bullet.sprite_index = sprite_projectile

	}

	}



}
