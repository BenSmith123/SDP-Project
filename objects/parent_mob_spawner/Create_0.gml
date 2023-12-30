
// set in variable definitions:
// mob_limit = 10 // max POSSIBLE mobs to spawn
// spawn_time_min_sec = 4
// spawn_time_max_sec = 15

mob_count = 0
mobs_to_spawn = irandom_range(mob_minimum, mob_limit) // max mobs to spawn between 0 and the limit

alarm[0] = 1 // spawn mob on creation

set_alarm = function()
{
	alarm[0] = irandom_range_frames(spawn_time_min_sec, spawn_time_max_sec)
}