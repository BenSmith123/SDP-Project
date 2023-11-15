
if image_xscale < 1
{image_xscale += 0.1
image_yscale += 0.1}
else
{
    if fade_out = true
    {
        image_alpha -= 0.06
        spark_fx.image_alpha -= 0.06
    }
}

if image_alpha <= 0
{
    with (spark_fx) instance_destroy()
    instance_destroy()
}
 
 
y2 -= 0.5

if instance_exists(obj_player)
{
    draw_sprite_ext(sprite_index,0,round(obj_player.x),obj_player.y-40+y2,image_xscale,image_yscale,0,image_blend,image_alpha)
}


