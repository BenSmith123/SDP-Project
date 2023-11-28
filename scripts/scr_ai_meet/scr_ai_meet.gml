
function scr_ai_meet_x()
{
	// TODO - replace with bbox (see below)
	if (x >= enemy.x-x_meet and x <= enemy.x+x_meet)
	{
	    return true
	}
	else
	{
	    return false
	}
}

function scr_ai_meet_y() 
{
	if enemy.bbox_bottom > bbox_top && enemy.bbox_top < bbox_bottom
	{
	    return true
	}
	else
	{
	    return false
	}
}
