/// returns the instance id of an object colliding with a given line and closest to the first point, or noone if no instance found
function collision_line_first(ox, oy, dx, dy, obj)
{
    var sx,sy,inst,i

    sx = dx - ox
    sy = dy - oy
    inst = collision_line(ox,oy,dx,dy,obj,true,true)
	
    if (inst == noone) { return noone }
	
    while ((abs(sx) >= 1) || (abs(sy) >= 1))
	{
        sx /= 2;
        sy /= 2;
        i = collision_line(ox,oy,dx,dy,obj,true,true);
        if (i) 
		{
            dx -= sx
            dy -= sy
            inst = i
        }
		else
		{
            dx += sx
            dy += sy
        }
    }
    
    return inst;
}