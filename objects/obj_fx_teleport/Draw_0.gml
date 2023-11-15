

//if size < 1{
size -= 0.06//}
//else
{

image_alpha -= 0.04}

if image_alpha <= 0
{instance_destroy()}



draw_sprite_ext(sprite_index,0,x,y,size,size,image_angle,image_blend,image_alpha)

