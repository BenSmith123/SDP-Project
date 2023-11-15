
if not instance_exists(target) {instance_destroy()}

y2 -= 0.4
image_alpha -= 0.02

if image_alpha <= 0
{
    instance_destroy()
}

scr_text_2()

draw_text_color(target.x,target.y+y2,string_hash_to_newline("HEAL "+string(heal_amount)),col1,col2,col3,col4,image_alpha)

