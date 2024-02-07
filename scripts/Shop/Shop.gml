

/// @description - called by parent_dialog_shop-child once the items have been set
function create_shop_items(button_height = 80, listing_offset = 0)
{
	var num_of_items = array_length(shop_items)
	if num_of_items == 0 { exit }
	
	var button_gap = 6

	// create scrolling controller
	scroll_region_forsale_obj = instance_create(dialog_x_center_left, scrollable_y, obj_scrollable_region_controller)
	scroll_region_forsale_obj.region_height = region_height

	var item_y = item_start_y + button_height/2
		
	// create all shop buttons
	for (var i = 0; i < num_of_items; i++) 
	{	
		var sell_details = shop_items[i]
		var cost = sell_details.cost
		var sellable_type = sell_details.type
		
		var item_listing = instance_create_depth(dialog_x_center_left, item_y, ObjectDepth.HUDItem, obj_shop_forsale_item)
		item_listing.cost = cost
		item_listing.sellable_type = sellable_type
		item_listing.top_y = item_start_y-20 // top to start fading out
		item_listing.bottom_y = scroll_region_forsale_obj.y + scroll_region_forsale_obj.region_height - 50 // fade out bottom
		item_listing.scrollable_controller = scroll_region_forsale_obj
		item_listing.height = button_height
		item_listing.draw_offset = listing_offset // offset for sprite and name
		
		if struct_exists(sell_details, "disabled") { item_listing.disabled = sell_details.disabled }

		// NOTE - a item for sale can be either an 'inventory item' or a 'action'
		
		// inventory item for sale
		if sellable_type == SellableType.Item 
		{
			var item_id = sell_details.item_id
			var item_for_sale = get_item(item_id)
			item_listing.inventory_item_id = item_for_sale.iid
			item_listing.listing_details = 
			{
				title: item_for_sale.name,
				sprite: item_for_sale.sprite,
				description: item_for_sale.description,
				class: item_for_sale.type == ItemType.Equipable 
					? item_for_sale.class
					: undefined
			}
		}

		// non-inventory item for sale (action)
		if sellable_type == SellableType.Action 
		{ 
			item_listing.on_purchase = sell_details.on_purchase
			item_listing.listing_details = 
			{
				title: sell_details.title,
				sprite: sell_details.sprite,
				description: sell_details.description,
				on_purchase: sell_details.on_purchase,
				class: undefined
			}
		}

		item_y += button_height + button_gap
	}
	
	var num_of_buttons = instance_number(obj_shop_forsale_item) 
	var total_button_height = (button_height + button_gap) * num_of_buttons
	
	scroll_region_forsale_obj.scrollable_height = total_button_height
}



function on_purchase_skin(skin_id)
{
	global.player_skin_id = skin_id
	obj_player.set_skin_sprites()
}
