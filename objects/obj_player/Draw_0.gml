
x = round(x)
y = round(y)

draw_nametag(global.name, 38)

// debug - testing teleport marker on blocks
//var above_block = instance_nearest(x,y-150,obj_block)
//if distance_to_object(above_block) < 100
//{draw_sprite(spr_test,0,above_block.x,above_block.y)}


// draw the healthbar
//draw_sprite_stretched_ext(spr_ai_health_bar,health_colour,x-32,y+60,hp/max_hp*64,1,c_white,1)
// 16 = half sprite width (for centering), 32 = healthbar width, 1 = healthbar height


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

