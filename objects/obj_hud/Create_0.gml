
depth = ObjectDepth.HUD

lives_x = 30

health_colour = 0
low_health_alpha = 0

instance_create(x,y,obj_pause_button)

// create on screen buttons for mobile

if (!global.system == SystemType.Mobile) { exit }


// left and right
global.vk_left_x = 40
global.vk_right_x = 220
    
global.vk_jump_x = WIDTH-280 // jump
    
global.vk_y = HEIGHT-160 // y for both left and right keys
    
// attack 
global.vk_attack1_x = WIDTH-150
global.vk_attack1_y = HEIGHT-280
    
global.vk_size = 140 // size of the virtual key AND sprite (in pixels)
	
    
// global positions for each virtual key, -(vk_size/2) to center the virtual key on the sprite
key = instance_create(0,0,obj_arrow_key_left)
virtual_key = virtual_key_add(global.vk_left_x,global.vk_y,global.vk_size,global.vk_size,ord("A"))
key.x2 = global.vk_left_x
key.y2 = global.vk_y
// virtual_key_show(virtual_key) // debug
    
    
key = instance_create(0,0,obj_arrow_key_right)
virtual_key = virtual_key_add(global.vk_right_x,global.vk_y,global.vk_size,global.vk_size,ord("D"))
key.x2 = global.vk_right_x
key.y2 = global.vk_y
// virtual_key_show(virtual_key)
    
   
key = instance_create(x,y,obj_arrow_key_jump)
virtual_key = virtual_key_add(global.vk_jump_x,global.vk_y,global.vk_size,global.vk_size,ord("W"))
key.x2 = global.vk_jump_x
key.y2 = global.vk_y
// virtual_key_show(virtual_key)
 
    
key = instance_create(x,y,obj_arrow_key_attack)
virtual_key = virtual_key_add(global.vk_attack1_x,global.vk_attack1_y,global.vk_size,global.vk_size,vk_space)
key.x2 = global.vk_attack1_x
key.y2 = global.vk_attack1_y
// virtual_key_show(virtual_key)
