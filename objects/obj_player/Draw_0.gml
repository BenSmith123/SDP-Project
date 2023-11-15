
scr_text_1()

draw_sprite_stretched(spr_name_label,0,x-string_width(string_hash_to_newline(global.name))/2-10,y+34,string_width(string_hash_to_newline(global.name))+20,20) // name label

draw_text(x,y+44,string_hash_to_newline(global.name)) // player name

draw_text(x,y+80, "state:" + state) // test

state = string(walk_speed)






//yoo = instance_nearest(x,instance_furthest(x,y,obj_block),obj_block)
//draw_sprite(spr_block_test,0,yoo.x,yoo.y)










x = round(x)
y = round(y)

above_block = instance_nearest(x,y-150,obj_block)

// debug
if distance_to_object(above_block) < 100 {
draw_sprite(spr_test,0,above_block.x,above_block.y)}

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


//if place_meeting(x,y+1,obj_block) {vspeed = 0} // ? fixes sprite issue 



        
// draw the healthbar
draw_sprite_stretched_ext(spr_ai_health_bar,health_colour,x-32,y+60,hp/max_hp*64,1,c_white,1)
// 16 = half sprite width (for centering), 32 = healthbar width, 1 = healthbar height

// head
//draw_sprite_ext(spr_head,image_index,x+head_x,y-22,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


if global.show_debug = true // debug text
{
    draw_set_halign(fa_center)
    draw_text(x,y-85,string_hash_to_newline("s " +string(state)))
    draw_text(x,y-70,string_hash_to_newline("v: " +string(vspeed)))
    draw_text(x,y-55,string_hash_to_newline("h: " +string(round(hspeed))))
}



//if keyboard_check_released(ord('A')) or keyboard_check_released(ord('D'))
//{sprite_index=spr_player_stand exit}


/*
if (hspeed = 0 && vspeed = 0) { if not place_free(x,y+1) {sprite_index = spr_player_stand; state = "stand"}}

if (hspeed < -1 || hspeed > 1) {sprite_index = spr_player_walking}

if not (vspeed = 0) && (hspeed < -1 || hspeed > 1) {sprite_index = spr_player_jump_right}

if not (vspeed = 0) && (hspeed = 0) {sprite_index = spr_player_jump}
*/


//platform = place_meeting(x,y+1,obj_block)
//if place_meeting(x,y,platform)
//{if platform.solid = true {vspeed = 0}}


// body
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)



