function player_attack()
{
	
	if can_attack != true { exit }
	
	damage = attack-irandom_range(0,accuracy) // calculate damage
   
	alarm[0] = 30 // can shoot again
	alarm[1] = 20 // for attacking sprite
    
	attacking = true
	can_attack = false
    
	image_index = 0 // restart the animation
	image_speed = 0.15
    
	enemy = instance_nearest(x,y,ai_parent)
    
    
	if melee_attack == true
	{
		// MELEE ATTACKS
		player_attack_melee() 
	}
	else
	{
		// PROJECTILE ATTACKS
		player_attack_projectile()	
	}

}

// TODO - fix crash when no AI on screen
// TODO - should still animate etc. when no mobs around
function player_attack_melee() 
{
	// y position meeting
	if y > enemy.y-20
	{ 
		if y < enemy.y+20 
		{
    
			if image_xscale = -1 // facing left
			{
			    if enemy.x <= x // enemy is on left
			    {
			        if enemy.x > x-120 // range for hitting
			        {
			            alarm[9] = 15
			        }
			    }
			}
        
			if image_xscale = 1
			{
			    if enemy.x > x
			    {
			        if enemy.x < x+120
			        {
			            alarm[9] = 15
			        }
			    }
			}
		}
	}
}


function player_attack_projectile() 
{
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
	
	
