
if not instance_exists(target) {instance_destroy()}

y2 -= 0.3
image_alpha -= 0.04

if image_alpha <= 0
{
    instance_destroy()
}

scr_text_4()

var yy = target.bbox_top-32 + y2 // above the player/mob head but moving up

draw_text_color(target.x,yy,"Heal "+string(heal_amount),col1,col2,col3,col4,image_alpha)

