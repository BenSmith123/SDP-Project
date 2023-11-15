/// @description  gravity

scr_gravity()



if place_meeting(x,y,obj_player)
{
if picked_up = false 
{
    global.coins += 1
    
    sprite_index = spr_coin_fx
    
    image_xscale = 0.2
    image_yscale = 0.2

    picked_up = true
}
}



