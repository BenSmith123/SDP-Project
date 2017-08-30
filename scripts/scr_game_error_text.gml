
// debug game controls

x = view_xview[0]
y = view_yview[0]


if global.user = "GM"
{
    if global.show_debug = true 
    {
    
        scr_text_1()
        draw_set_halign(fa_left)

        draw_text(x+10,y+HEIGHT-240,""+string(display_get_width()))
        
    
        //draw_text(x+10,y+HEIGHT-200,"deviceX:  " +string(device_mouse_x(0)) +string("#deviceY: " +string(device_mouse_y(0))))
    
        //draw_text(x+10,y+HEIGHT-160,)
        
        draw_text(x+10,y+HEIGHT-120,"width:  " +string(round(view_xview[0])) +string("#width2: " +string(round(view_yview[0]))))
        if instance_exists(obj_player)
        {draw_text(x+10,y+HEIGHT-80,"playerX:  " +string(round(obj_player.x)) +string("#playerY:" +string(round(obj_player.y))))}
        
        draw_text(x+10,y+HEIGHT-60,"<F1 = show controls>")
        
        draw_text(x+10,y+HEIGHT-40,"ERROR: " +string(global.error))
        
        draw_text(x+10,y+HEIGHT-20,"DEBUG MODE: ")
        
    }
}


