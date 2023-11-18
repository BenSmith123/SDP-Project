
scr_text_1()

draw_sprite_stretched(spr_name_label,0,x-string_width(string_hash_to_newline(global.name))/2-10,y+34,string_width(string_hash_to_newline(global.name))+20,20) // name label

draw_text(x,y+44,string_hash_to_newline(global.name)) // player name


x = round(x)
y = round(y)

above_block = instance_nearest(x,y-150,obj_block)

// debug
if distance_to_object(above_block) < 100
{
	draw_sprite(spr_test,0,above_block.x,above_block.y)
}


// draw the healthbar
draw_sprite_stretched_ext(spr_ai_health_bar,health_colour,x-32,y+60,hp/max_hp*64,1,c_white,1)
// 16 = half sprite width (for centering), 32 = healthbar width, 1 = healthbar height

// head
//draw_sprite_ext(spr_head,image_index,x+head_x,y-22,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


if global.show_debug = true // debug text
{
    draw_set_halign(fa_center)
	var debug_text = "state" +string(state)
    draw_text(x,y-85, string_hash_to_newline(debug_text))
}


// body
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)



// draw the target arrow for melee attacks
enemy = instance_nearest(x,y,ai_parent)
		
if (enemy == noone) { exit }
		
// MELEE ATTACKS
if image_xscale = -1
{
    if enemy.x <= x
    {
        if enemy.x > x-120 // range for hitting
        {
            draw_sprite(spr_test,0,enemy.x,enemy.y-30)
        }
    }
}
        
if image_xscale = 1
{
    if enemy.x > x
    {
        if enemy.x < x+120 // range for hitting
        {
            draw_sprite(spr_test,0,enemy.x,enemy.y-30)
        }
    }
}

