function test_player_skill()
{
	
	if !instance_exists(ai_parent) || !instance_exists(obj_player) { exit }
	
	var skill = choose(test_skill_spray_projectiles, test_skill_damage_all)
	
	skill()
}


function test_skill_damage_all()
{
	log_player_message("#test_skill_damage_all()")
	
	with(ai_parent)
	{
		//console_log(object_get_name(id))
		// name = distance_to_object(obj_player)
		//if distance_to_object(obj_player) < 200
		{ 
			var damage = calculate_damage(obj_player.attack, obj_player.accuracy, self.defence)
			deal_damage_to_mob(self, damage)
		}
	}
}


function test_skill_spray_projectiles()
{
	log_player_message("#test_skill_spray_projectiles()")
	

	with(ai_parent)
	{
		
		var mob = self
		
		if collision_line(x,y,obj_player.x,obj_player.y, obj_block,false,true) == noone
		{
			with (obj_player)
			{
					var x_pos = x + (image_xscale * 20)
	
					var bullet = instance_create(x_pos, y, obj_projectile_player)
					bullet.attack = attack
					bullet.accuracy = accuracy

					bullet.sprite_index = sprite_projectile
	
					bullet.speed = 14
					
					//log_player_message(string(self.level))
					bullet.direction = point_direction(x,y,mob.x,mob.y)
					
					bullet.alarm[0] = -1
			}
			
			//var damage = calculate_damage(obj_player.attack, obj_player.accuracy, self.defence)
			//deal_damage_to_mob(self, damage)
		}
	}
}
