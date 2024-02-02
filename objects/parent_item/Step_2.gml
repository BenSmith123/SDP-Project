
basic_collision_and_gravity()


if !can_pick_up { exit }

if place_meeting(x,y,obj_player)
{
	var item_added = inventory_add(item_details)
	if item_added
	{
		// stats
		if item_details.rarity == ItemRarity.Legendary { global.legendary_items_found += 1 }
		global.total_items_picked_up += 1
		
		instance_destroy() 
	}
	
	// if item couldn't be picked up, disable collision to avoid spam
	alarm[0] = get_seconds(10)
	can_pick_up = false
}
