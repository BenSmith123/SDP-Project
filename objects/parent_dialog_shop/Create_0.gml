
dialog_width = 960
dialog_height = 520

event_inherited()


title = "Shop"

scroll_region_item_obj = instance_create(dialog_x_center_right, dialog_y_top+132, obj_scrollable_region_controller)
scroll_region_item_obj.region_height = 400

instance_create(dialog_x_center_right, dialog_y_top+80, obj_coin_display)


item_gap = 68
item_start_y = dialog_y_top+132 + item_gap/2

create_inventory_shop_items = function() 
{
	var num_of_items = array_length(global.inventory_array)
	if num_of_items == 0 { exit }

	var item_y = item_start_y
		
	for (var i = 0; i < num_of_items; i++) 
	{	
		var inv_item = global.inventory_array[i]
		var inventory_item_id = inv_item[0]
		var inventory_item_amount = inv_item[1]
		
		var item = instance_create_depth(dialog_x_center_right, item_y, ObjectDepth.HUDItem, obj_shop_inventory_item)
		item.top_y = item_start_y // top to start fading out
		item.bottom_y = scroll_region_item_obj.y + scroll_region_item_obj.region_height - 100 // fade out bottom
		item.scrollable_controller = scroll_region_item_obj
		item.item_details = get_item(inventory_item_id)
		item.amount = inv_item[1]
		item.inventory_index = i
		
		item_y += item_gap
	}
}

create_inventory_shop_items()
scroll_region_item_obj.scrollable_height = instance_number(obj_shop_inventory_item) * item_gap + item_gap/2
