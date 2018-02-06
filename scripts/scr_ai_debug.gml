
if block_infront == true
{draw_text(x,y,"Block infront!")}

if global.show_debug = true  // debug text
{

    if keyboard_check_pressed(ord('1')) {show_detect_distance = !show_detect_distance}
    if keyboard_check_pressed(ord('2')) {show_xy_meeting = !show_xy_meeting}
    if keyboard_check_pressed(ord('3')) {show_main_variables = !show_main_variables}
    if keyboard_check_pressed(ord('4')) {show_platform_variables = !show_platform_variables}
    
    
    //draw_sprite(spr_bullet,0,enemy.x,enemy.y)
    
    if show_platform_variables = true
    {
        draw_sprite(spr_marker,0,block.x,block.y)
        draw_sprite(spr_marker,0,block2.x,block2.y)
        
        draw_text(x,y-80,platform_width)
        
        draw_rectangle(x,y,x-leftx,y,false)
        draw_rectangle(x,y,x+rightx,y,false)
        
        platform_x_left = x-leftx
        platform_x_right = x+rightx
    
    }
    
    
    
    if show_main_variables = true
    {
        draw_text(x,y-85,"" +string(state))
        draw_text(x,y-70,"" +string(distance_to_object(enemy)))
        draw_text(x,y-55,"aggressive: " +string(aggressive))
        
        //draw_text(x,y-55,"dis " +string(block_distance))
        
        draw_text(x+block_distance,y,"x")
        draw_text(x,y+jump_block_height,"x")
    }
    
    
    
    if show_detect_distance = true
    {
        draw_text(x-detect_distance-sprite_width,y,"d")
        draw_text(x+detect_distance+sprite_width,y,"d")
        draw_text(x,y-detect_distance,"d")
        draw_text(x,y+detect_distance,"d")
    }
    
    
    
    if show_xy_meeting = true
    {
        draw_text(x-y_meet,y,"---")
        draw_text(x+y_meet,y,"---")
        draw_text(x,y-x_meet,"|")
        draw_text(x,y+x_meet,"|")
    
    }


    
}

