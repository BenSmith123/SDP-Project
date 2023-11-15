
x = __view_get( e__VW.XView, 0 )
y = __view_get( e__VW.YView, 0 )

// fade to black screen
if fade_out = true
{
    if image_alpha < 1
    {
        image_alpha += 0.04
    }
    
    draw_sprite_stretched_ext(spr_black,0,x,y,WIDTH,HEIGHT,c_black,image_alpha)
    //draw_sprite_part(spr_black,0,x,y,WIDTH,HEIGHT,x,y)
    
}

