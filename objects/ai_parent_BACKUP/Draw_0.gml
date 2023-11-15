

if stay = 1{sprite_index = sprite_stand}
if hurt = false and stay = 0{sprite_index = sprite_walk}
if place_free(x,y+1){sprite_index = sprite_jump}
if hurt = true{sprite_index = sprite_hit}

if global.effects_active = true
{
    if hurt = true
    {
        draw_sprite_ext(sprite_index,image_index,x,y,dir,image_yscale,image_angle,c_red,0.5)
    }
    else if global.drug_effect_1 = true
    {
        colour = choose(c_red,c_aqua,c_yellow,c_lime,c_fuchsia)
    }
    draw_sprite_ext(sprite_index,image_index,x,y,dir,image_yscale,image_angle,colour,image_alpha) 
}
else
{
    draw_sprite_ext(sprite_index,image_index,x,y,dir,image_yscale,image_angle,c_white,image_alpha)
    if hurt = true
    {
        draw_sprite_ext(sprite_index,image_index,x,y,dir,image_yscale,image_angle,c_red,0.4)
        //draw_sprite_ext(spr_hit_effect,1,x,y,dir,1,1,c_white,1)
    }
}

if global.glasses_effect = true
{
    stay = 1
    dir = -1
    draw_sprite_ext(spr_glasses,image_index,x+3,y-7,dir,image_yscale,image_angle,c_white,image_alpha)
}

if mouse_enter = true
{
    //scr_textstyle_4()
    draw_text(x,y-60,string_hash_to_newline(name))
    draw_sprite(spr_hpbar_back,0,x-32,y-40)
    draw_sprite_stretched(spr_hpbar,0,x-32,y-40,hp/maxhp*64,6)
}


