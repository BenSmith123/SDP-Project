
function scr_ai_meet_x()
{
	if enemy.bbox_left > bbox_right && enemy.bbox_right < bbox_left
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
