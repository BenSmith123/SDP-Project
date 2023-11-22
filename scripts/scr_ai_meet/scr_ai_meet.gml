
function scr_ai_meet_x()
{
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
	if (y >= enemy.y-y_meet && y <= enemy.y+y_meet)
	{
	    return true
	}
	else
	{
	    return false
	}
}
