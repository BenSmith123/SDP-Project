function equip_item()
{
	// equips cannot be stacked - prevent equipping item if currently equipped can't go in inventory
	if array_length(global.inventory_array) == global.inventory_size_max
	{
		log_player_message("Unable to equip item - inventory full")
		exit
	}
			
	// set the new primary/secondary item
	var is_primary_slot = selected_item_details.equip_slot == ItemSlot.Primary
			
	// put currently equipped item back in inventory
	var item_to_put_back = is_primary_slot 
		? global.equip_item_id_primary 
		: global.equip_item_id_secondary
				
	if is_primary_slot
	{ 
		global.equip_item_id_primary = selected_item_details.iid
		obj_inventory_equipped_primary.item_details = selected_item_details
	}
	else
	{ 
		global.equip_item_id_secondary = selected_item_details.iid 
		obj_inventory_equipped_secondary.item_details = selected_item_details
	}
			
	// TODO - handle multiple damage multipliers from all equips rather than just overwrite it each time
	global.equip_damage_multiplier = selected_item_details.damage_multiplier
	
	// TEMP - this will need to be extended/removed with other class projectiles
	if instance_exists(obj_player)
	{
		obj_player.sprite_projectile = selected_item_details.sprite
	}
				
	// remove item being equipped
	inventory_remove_by_index(selected_item_inv_index, 1)
			
	// adding item will update the inventory dialog
	inventory_add(get_item(item_to_put_back))
}
