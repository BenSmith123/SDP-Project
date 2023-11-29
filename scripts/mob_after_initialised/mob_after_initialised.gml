// @description - called by every mob has ran both parent & child initialise events
function mob_after_initialised()
{
	 // keep mask the same regardless of animation - prevent getting stuck etc.
	mask_index = sprite_stand
	
	// spawn with max hp
	maxhp = hp
}