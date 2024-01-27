function scr_teleport() 
{
	if !can_teleport_to_point { exit }
	
	if !instance_exists(block_to_teleport_to) { exit }
	
	vel_y = -3
	y = block_to_teleport_to.y-60
	instance_create(x,y,obj_fx_teleport)
	part_particles_create(global.fx,x,y,global.spark_fx_blue,20)
	part_particles_create(global.fx,x,y,global.fx_flare,1)
}
