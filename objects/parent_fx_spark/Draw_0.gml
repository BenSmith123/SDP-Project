
image_alpha -= fadeout_speed


if image_alpha <= 0
{instance_destroy()}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
