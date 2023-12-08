function player_jump_down()
{
	y += 1 // move player 1px down - this will void the boundrybox collision check
	disable_block_collision = true
	
	// TODO - check that the block player is standing on can be jumped through
}