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


function player_attack_melee() 
{
	enemy = instance_nearest(x,y,ai_parent)
	if (enemy == noone) { exit }
	
	var attack_range = image_xscale * 120
	
	var y_position_meeting = y > enemy.y-20 && y < enemy.y+20
	if (y_position_meeting == false) { exit }
	
	var facing_left = image_xscale == -1
	
	// enemy is to the left of the player (+14 incase the enemy is basically ontop of player)
	var is_enemy_infront = facing_left
		? enemy.x <= x+14
		: enemy.x > x-14
	
	var is_enemy_in_range = facing_left
		? enemy.x > x + attack_range
		: enemy.x < x + attack_range
		
	if (is_enemy_infront && is_enemy_in_range)
	{
		// do damage!
		alarm[9] = 15
	}
	
}


function player_attack_projectile() 
{
	var x_pos = x + (image_xscale * 20)
	var bullet_speed = image_xscale * 14
	
	bullet = instance_create(x_pos,y,obj_bullet_player)

	bullet.hspeed = bullet_speed
	bullet.image_xscale = image_xscale
    
	bullet.damage = damage
	bullet.sprite_index = sprite_projectile
}
	
	