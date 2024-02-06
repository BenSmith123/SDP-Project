
enum PlayerSkinId
{
	Default,
	Ben,
	Shadow,
	Knight,
	length // hack to easily loop over enums (must be the last item)
}


///@description - loops over every player skin ID and every player action of that skin to
///               set the sprite offsets - will log an error when a sprite is not found
function initialise_player_skins()
{
	//@returns - -1 if sprite doesn't exist OR the sprite id of a given the skin_id and action (e.g. spr_skin_0_jump)
	function get_sprite(sprite_name)
	{
		return asset_get_index(sprite_name)
	}
	
	var sprite_actions = [
		"stand",
		"walk",
		"jump",
		"climb",
		"swing", // fighter
		"throw", // spellcaster
		"throw_2", // ninja
		"shoot", // hunter arrows etc.
		"dead"
	]
	
	// loop over every skin ID
	for (var i = 0; i < PlayerSkinId.length; i++) 
	{
		// loop over every action for that sprite
		for (var r = 0; r < array_length(sprite_actions); r++) 
		{
			var action_name = sprite_actions[r]
			
			var sprite_name = $"spr_skin_{i}_{action_name}"
			
			var sprite = get_sprite(sprite_name)
			
			if sprite == -1 
			{ 
				log_player_message($"error - missing skin sprite: {sprite_name}")
				continue 
			}
			
			var x_offset = sprite_get_width(sprite) / 2 // center x of sprite
			var y_offset = sprite_get_height(sprite) - 34 // y offset taken from the bottom (as character height can vary)
			
			// dead sprite needs to differ
			if action_name == "dead" { y_offset = sprite_get_height(sprite) / 2 + 12 }
			
			// adjust swing sprite to re-align sword swings
			if action_name == "swing" { x_offset += get_swing_sprite_x_offset(i) }
			
			sprite_set_offset(sprite, x_offset, y_offset)
		}
	}

}

///@description - get the additional x pos the sprite should be re-aligned
// sprites are all different widths (especially when swinging a weapon) because the cape/helmet
// this breaks the swing of a sword for some skins - hardcoded an offset to fix this
function get_swing_sprite_x_offset(skin_id)
{
	if skin_id == PlayerSkinId.Knight { return 8 }
	if skin_id == PlayerSkinId.Shadow { return 10 }

	return 0
}