
if size < 1 {size += 0.1}


if instance_exists(obj_player)
{
    image_angle +=2
    
    draw_sprite_ext(sprite_index,1,obj_player.x,obj_player.y,size,size,image_angle,c_white,image_alpha)
    draw_sprite_ext(sprite_index,0,obj_player.x,obj_player.y,size,size,-image_angle,c_white,image_alpha)
}



