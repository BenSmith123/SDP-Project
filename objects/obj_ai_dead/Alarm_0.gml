
if animated_death { exit }

if image_alpha <= 0 { instance_destroy() }

image_alpha -= 0.04
alarm[0] = 1

