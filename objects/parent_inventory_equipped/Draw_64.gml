
// TODO - selected description etc
//var is_selected = inventory_index == obj_dialog_inventory.selected_item_inv_index
//if is_selected || position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),self)
//{
//	gpu_set_blendmode(bm_add)
//	draw_circle_colour(x, y, 20, c_silver, c_black, 0)
//	gpu_set_blendmode(bm_normal)
//}

draw_self() // background

if !disabled { draw_sprite(item_details.sprite, 0, x, y) }

scr_text_1()
draw_text(x, bbox_bottom+12, label)
