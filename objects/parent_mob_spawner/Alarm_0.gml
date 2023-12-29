
set_alarm()

// 1/3 chances of not spawning
var skip_spawn = random_chance(3)
if skip_spawn { exit }

if mob_count < mobs_to_spawn
{
	var mob = instance_create(x, y, obj_ai_1)
	mob.spawner = id
	mob_count++
}
