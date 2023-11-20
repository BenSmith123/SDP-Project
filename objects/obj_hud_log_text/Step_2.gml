
if start_fade == true
{
	image_alpha -= 0.04
	
	if image_alpha <= 0 instance_destroy()
}

