///scr_is_on_screen(returns true if the object is on screen)

// do this in separate IF statements to save memory
if x < view_xview[0]
{return false} 
else if x > view_xview[0]+WIDTH
{return false}
else if y < view_yview[0]
{return  false} 
else if y > view_yview[0]+HEIGHT
{return false}
else
{return true} // object is on screen!

