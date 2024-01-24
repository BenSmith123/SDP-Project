
x = round(x)
y = round(y)

draw_nametag(global.name, y+38)

// draw the healthbar
// draw_sprite_stretched_ext(spr_ai_health_bar,health_colour,x-32,y+60,hp/max_hp*64,1,c_white,1)
// 16 = half sprite width (for centering), 32 = healthbar width, 1 = healthbar 


// item being carried - BEHIND player
if !is_on_ladder { draw_item_on_back() }

// body
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

// item being carried - INFRONT of player
if is_on_ladder { draw_item_on_back() }

// weapon
if sprite_weapon_attack != undefined && sprite_index == sprite_attack
{
	draw_sprite_ext(sprite_weapon_attack, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}


// DEBUG
if global.show_debug
{	
	draw_sprite(mask_index, 0, x, y)
    draw_set_halign(fa_center)
	var debug_text = "state" +string(state) +
	"#image_index: " + string(image_index) +
	"#image_speed: " + string(image_speed) +
	"#sprite_index: " + sprite_get_name(sprite_index)
    draw_text(x,y-85, string_hash_to_newline(debug_text))
	
	//var mouse_pos = $"{mouse_x}#{mouse_y}"
	var mouse_pos = $"{device_mouse_x_to_gui(0)}#{device_mouse_y_to_gui(0)}"
	draw_text(mouse_x+32, mouse_y, string_hash_to_newline(mouse_pos))
}



if has_teleport_skill
{
	var closest_block_above = instance_nearest(x, bbox_top-50, obj_block)
	block_to_teleport_to = collision_line(x,y,x,closest_block_above.y, obj_block,false,true)

	if distance_to_object(block_to_teleport_to) < 150
	&& distance_to_object(block_to_teleport_to) > 80
	{
		can_teleport_to_point = true
		draw_sprite(spr_marker_pointer, 0, x, block_to_teleport_to.bbox_top-2)
	}
	else
	{
		can_teleport_to_point = false
	}
}