// This function checks if the instance is colliding with an object, or a tile, at the current
// position + the given movement values (_move_x and _move_y).
// The function returns true if a collision was found, or false if a collision was not found.
function check_collision(_move_x, _move_y) 
{

	// This checks for an object collision at the new position, where the instance is going to move
	// We get the new position by adding _move_x and _move_y to the instance's X and Y values
	// NOTE - prevent player from falling through slopes - this also stops player from jumping up through blocks
	if place_meeting(x + _move_x, y + _move_y, obj_block_slope_parent)
	{
		// If there was an object collision, return true, and end the function
		return true;
	}
	
	if place_meeting(x + _move_x, y + _move_y, obj_block_solid)
	{
		// If there was an object collision, return true, and end the function
		return true;
	}
	
	
	// check for blocks that can be jumped through
	if (vel_y >= 0)
	{
        var _platform = instance_place(x + _move_x, y + _move_y, obj_block)
        if (_platform != noone)
        {
			// if player is above block
            if (bbox_bottom <= _platform.bbox_top)
            {
				return true;
            }
        }
	}
	

	if (collision_tilemap == -1) { exit }

	// The function continues if there were no object collisions. In this case we check for tile
	// collisions, at each corner of the instance's bounding box.
	// This checks for tile collision at the top-left corner of the instance's mask
	var _left_top = tilemap_get_at_pixel(collision_tilemap, bbox_left + _move_x, bbox_top + _move_y);

	// This checks for tile collision at the top-right corner of the instance's mask
	var _right_top = tilemap_get_at_pixel(collision_tilemap, bbox_right + _move_x, bbox_top + _move_y);

	// This checks for tile collision at the bottom-right corner of the instance's mask
	var _right_bottom = tilemap_get_at_pixel(collision_tilemap, bbox_right + _move_x, bbox_bottom + _move_y);

	// This checks for tile collision at the bottom-left corner of the instance's mask
	var _left_bottom = tilemap_get_at_pixel(collision_tilemap, bbox_left + _move_x, bbox_bottom + _move_y);

	// The results of the above four actions were stored in temporary variables. If any of those variables were true, meaning a tile
	// collision was found at any given corner, we return true and end the function.
	if (_left_top or _right_top or _right_bottom or _left_bottom)
	{
		return true;
	}

	// If no tile collisions were found, the function continues.
	// In that case we return false, to indicate that no collisions were found, and the instance is free to move to the new position.
	return false;
}