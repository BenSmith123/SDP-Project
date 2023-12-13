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
	
	var attack_range = image_xscale * melee_attack_range
	
	var y_position_meeting = y > enemy.bbox_top && y <enemy.bbox_bottom
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
	
	var bullet = instance_create(x_pos, y, obj_projectile_player)
	bullet.attack = attack
	bullet.accuracy = accuracy

	bullet.speed = bullet_speed
	bullet.sprite_index = sprite_projectile
	
	// if near a mob, create projectile towards them
	var mob = get_mob_to_shoot_at()
	if mob == noone { exit }
	
	bullet.speed = abs(bullet_speed) // make speed positive as the direction now decides the bullet movement
	bullet.direction = point_direction(x,y,mob.x,mob.y)

}


// returns noone or the closest mob that is in range, not behind a wall and not too far above
function get_mob_to_shoot_at()
{
	var target_dist = 500
	
	with ai_parent
	{
		var is_in_range = point_distance(x,y,other.x,other.y) < target_dist
		var player_facing_ai = sign(x - other.x) = other.image_xscale
		var behind_block = collision_line(x, y, other.x, other.y, obj_block, false, true)
		
		if is_in_range && player_facing_ai && !behind_block
		{
			var angle = point_direction(x,y,other.x,other.y)
			var is_too_far_above = angle > 225 && angle < 315
			if is_too_far_above { return noone }
			return id
		}
	}
	
	return noone
}
