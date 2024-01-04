
if disabled { exit }

image_index = 0

// if item hasn't been scrolled
if y_when_pressed == y
{
	if image_alpha > 0.75 // if item isn't scrolled out of view
	{
		on_press_accepted()
	}
}
