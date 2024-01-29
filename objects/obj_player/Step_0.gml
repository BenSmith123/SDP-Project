
move_direction = ""

player_camera()

player_controls()

if hp <= 0
{
    instance_destroy()
}

if is_on_ladder 
{
	if !place_meeting(x, y, parent_climbable) { is_on_ladder = false }
	exit 
}

// if player is jumping down through a slope, ignore collision checking while player is
// still falling through the block, and re-renable it once player is free falling
if (disable_block_collision)
{
	disable_block_collision = check_collision(0, sign(vel_y), false)
}


// The section below handles pixel-perfect collision checking.
// It does collision checking twice, first on the X axis, and then on the Y axis.
// On each axis, it moves the character pixel-by-pixel until its velocity for that axis is covered, or a collision is found.
// 'move_count' is how many total pixels the character needs to move this frame. It is the absolute value of the velocity on an axis.
// 'move_once' is the amount of pixels it needs to move once, before checking for a collision. It is 1, 0, or -1.
var _move_count = abs(vel_x);
var _move_once = sign(vel_x);

var is_walking_up_slope = false

// This runs a loop, which runs 'move_count' times. All code in this block is repeated that many amount of times.
repeat (_move_count)
{
	// This calls the check_collision function to check for collisions on the X axis, if moved by the move_once value on that dimension.
	// The Y argument is set to 0, so for this collision there is no Y movement.
	var _collision_found = check_collision(_move_once, 0, disable_block_collision);

	// This checks if collision_found is false, meaning a collision was not found, and the player is free to move once on the X axis.
	if (!_collision_found)
	{
		// In that case, move_once is added to the X coordinate of the character.
		x += _move_once
	}
	else
	{
		// In that case, we reset the X velocity to 0, so the character stops its movement on that axis.
		vel_x = 0;
	
		// Then we break out of the Repeat loop, as no more collision checks are required.
		//break;
	}
	
	// check for slope
	if place_meeting(x+_move_once, y+vel_y, obj_block_slope_parent)
	//if place_meeting(x+_move_once, y, obj_block_slope_parent)
	{
		// loop to push the player up depending on the slope
		for(var new_y = 0; new_y < 10; new_y++)
		{
			// checks for place free above the slope (prevent walking up/through a wall)
			if (place_empty(x+_move_once, y-new_y, obj_block_slope_parent))
			{
				// move player diagonally
				is_walking_up_slope = true
				//x += _move_once // * 2
				y -= new_y;
				break
			}
		}
	}
		
	// moving down slope
	if (!place_meeting(x+_move_once, y+vel_y, obj_block_slope_parent) && place_meeting(x+_move_once, y+vel_y+10, obj_block_slope_parent))
	{
		y += abs(_move_once);
	}
}

// We now repeat all of the previous steps to check for collisions on the Y axis.
// Everything is the same, but vel_x is replaced by vel_y, and the check_collision function takes a Y value (its second argument).
_move_count = abs(vel_y);
_move_once = sign(vel_y);

// This runs a loop, which runs 'move_count' times. All actions attached to this are repeated that many amount of times.
repeat (_move_count)
{
	// This calls the check_collision function to check for collisions on the Y axis, if moved by the move_once value.
	// The result of the function, either true or false, is stored in the 'collision_found' variable, which is temporary.
	var _collision_found = check_collision(0, _move_once, disable_block_collision);

	// This checks if collision_found is false, meaning a collision was not found, and the player is free to move once on the Y axis.
	if (!_collision_found && is_walking_up_slope == false)
	{
		// apply gravity
		y += _move_once;
	}
	else
	{
		// In that case, we reset the Y velocity to 0, so the character stops its movement on that axis.
		vel_y = 0;
		
		// Then we break out of the Repeat loop, as no more collision checks are required.
		break;
	}
}
