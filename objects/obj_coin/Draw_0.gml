
x = round(x)
y = round(y)

if picked_up = true
{
    image_alpha -= 0.04
    image_xscale += 0.2
    image_yscale += 0.2
    
    if image_alpha <= 0 {instance_destroy()}
}

draw_self()

