
x = round(x)
y = round(y)

ai_draw_debug_info()


name = sprite_get_name(sprite_index)

// NAME TAG
draw_nametag(name, bbox_bottom + 6)


// HEALTH BAR
if show_hp == true
{
    scr_text_4()
	
    //draw_sprite(spr_ai_health_bar,1,x-20,y+tag_y+36) // back
    draw_sprite_stretched_ext(spr_ai_health_bar,healthbar_colour+1,x-20,bbox_top-20,hp/maxhp*40,1,c_white,1) // front 
    // 20 = half the sprite width
    // 40 = healthbar width
    // 1 = healthbar height
    //draw_text(x,y+tag_y+44,string(hp))// + "/" + string(maxhp))
}


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha) 
