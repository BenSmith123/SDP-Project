
if no_reward { exit }

global.coins += 1
//instance_create(x,y,obj_fx_coin_pickup)
part_particles_create(global.fx,x,y,global.fx_coin_pickup,1)
	