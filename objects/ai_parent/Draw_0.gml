

block = instance_nearest(x-leftx,y+20,obj_block)
block2 = instance_nearest(x+rightx,y+20,obj_block)

scr_ai_debug()

scr_text_1()

x = round(x)
y = round(y)

// NAME TAG
// position based on the mask index (cause all AI different size)
draw_sprite_stretched(spr_name_label,0,x-string_width(string_hash_to_newline(name))/2-10,y+tag_y+44,string_width(string_hash_to_newline(name))+20,20) // name label
draw_text(x,y+tag_y+54,string_hash_to_newline(name))



// HEALTH BAR
if show_hp = true
{
    scr_text_4()
    //draw_sprite(spr_ai_health_bar,1,x-20,y+tag_y+36) // back
    draw_sprite_stretched_ext(spr_ai_health_bar,health_colour,x-20,y+tag_y+36,hp/maxhp*40,1,c_white,1) // front 
    // 20 = half the sprite width
    // 40 = healthbar width
    // 1 = healthbar height
    //draw_text(x,y+tag_y+44,string(hp))// + "/" + string(maxhp))
}




// SPRITES



if stay = true {sprite_index = sprite_stand}

if stay = false {sprite_index = sprite_walk}

if place_free(x,y+1)
{
    sprite_index = sprite_jump
    leftx = 0
    rightx = 0
    platform_width = 24
}

if attacking = true {sprite_index = sprite_attack}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha) 






