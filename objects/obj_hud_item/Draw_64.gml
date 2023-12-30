
//iid: ItemId.DragonEgg,
//name: "Dragon Egg",
//type: ItemType.Misc,
//description: "TODO",
//sprite: spr_item_dragon_egg,
//rarity: ItemRarity.Common,
//stack_size: 1,
//is_sellable: true,
//sell_value: 100

var is_selected = inventory_index == obj_inventory.selected_item_inv_index

if is_selected || position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),self)
{
	gpu_set_blendmode(bm_add)
	draw_circle_colour(gui_x, gui_y, 20, c_silver, c_black, 0)
	gpu_set_blendmode(bm_normal)
}

// shadow
//gpu_set_blendmode(bm_add)
//draw_circle_colour(gui_x, gui_y, 20, c_black, c_white, 0)
//gpu_set_blendmode(bm_normal)



draw_sprite(item_details.sprite, 0, gui_x, gui_y)

scr_text_1()
draw_set_font(font_arial_12_bold)
draw_text(gui_x+14, gui_y+14, amount)
