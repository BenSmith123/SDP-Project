function create_mobile_controls()
{

	// left and right
	global.vk_left_x = 40
	global.vk_right_x = 260
    
	global.vk_jump_x = WIDTH-280 // jump
	global.vk_jump_down_x = WIDTH-140

    
	global.vk_y = HEIGHT-160 // y for both left and right keys
	var key_y = global.vk_y
    
	// attack 
	global.vk_attack1_x = WIDTH-150
	global.vk_attack1_y = HEIGHT-280

	global.vk_size = 140 // size of the virtual key AND sprite
	key_size = global.vk_size

	// TODO - refactor - have each instance create virtual keys, map to global of player controls
    
	// global positions for each virtual key, -(vk_size/2) to center the virtual key on the sprite
	key = instance_create(0,0,obj_arrow_key_left)
	virtual_key = virtual_key_add(global.vk_left_x,key_y,key_size,key_size,ord("A"))
	key.x = global.vk_left_x
	key.y = key_y
	key.size = key_size
	// virtual_key_show(virtual_key) // debug

    
	key = instance_create(0,0,obj_arrow_key_right)
	virtual_key = virtual_key_add(global.vk_right_x,key_y,key_size,key_size,ord("D"))
	key.x = global.vk_right_x
	key.y = key_y
	key.size = key_size

   
	key = instance_create(x,y,obj_arrow_key_jump)
	virtual_key = virtual_key_add(global.vk_jump_x,key_y,key_size,key_size,ord("W"))
	key.x = global.vk_jump_x
	key.y = key_y
	key.size = key_size

	key = instance_create(x,y,obj_arrow_key_jump_down)
	var size_small = key_size * 0.75
	virtual_key = virtual_key_add(global.vk_jump_down_x,key_y+20,size_small,size_small,ord("S"))
	key.x = global.vk_jump_down_x
	key.y = key_y+20
	key.size = size_small

    
	key = instance_create(x,y,obj_arrow_key_attack)
	virtual_key = virtual_key_add(global.vk_attack1_x,global.vk_attack1_y,key_size,key_size,vk_space)
	key.x = global.vk_attack1_x
	key.y = global.vk_attack1_y
	key.size = key_size

	// virtual_key_show(virtual_key)

}