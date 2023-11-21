
x = round(x)
y = round(y)

ai_draw_debug_info()

scr_text_1()

// NAME TAG
draw_sprite_stretched(spr_name_label,0,x-string_width(name)/2-10,y+tag_y,string_width(name)+20,20) // name label
draw_text(x,y+tag_y+9,name)


// HEALTH BAR
if show_hp == true
{
    scr_text_4()
	
    //draw_sprite(spr_ai_health_bar,1,x-20,y+tag_y+36) // back
    draw_sprite_stretched_ext(spr_ai_health_bar,healthbar_colour+1,x-20,y+tag_y+36,hp/maxhp*40,1,c_white,1) // front 
    // 20 = half the sprite width
    // 40 = healthbar width
    // 1 = healthbar height
    //draw_text(x,y+tag_y+44,string(hp))// + "/" + string(maxhp))
}


draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha) 
