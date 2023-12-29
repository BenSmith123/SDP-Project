
//iid: ItemId.DragonEgg,
//name: "Dragon Egg",
//type: ItemType.Misc,
//description: "TODO",
//sprite: spr_item_dragon_egg,
//rarity: ItemRarity.Common,
//stack_size: 1,
//is_sellable: true,
//sell_value: 100

if show_details || position_meeting(mouse_x,mouse_y,self)
{
	gpu_set_blendmode(bm_add);
	draw_circle_colour(gui_x, gui_y, 20, c_white, c_black, 0);
	gpu_set_blendmode(bm_normal);
}

draw_sprite(sprite, 0, gui_x, gui_y)

scr_text_1()
draw_set_font(font_arial_12_bold)
draw_text(gui_x+14, gui_y+14, amount)

if show_details
{
	var details_x = WIDTH/2+16
	var details_y = 180
	
	draw_sprite(sprite, 0, details_x+10, details_y+8)
	scr_text_6()
	
	draw_text(details_x, details_y+32, "Description: " + description)
	draw_text(details_x, details_y+60, $"Rarity: {get_item_rarity_name(rarity)}")
	draw_text(details_x, details_y+86, "Type: Misc.")	
	draw_text(details_x, details_y+112, "Sellable: Yes")

	// title
	draw_set_font(font_arial_12_bold)
	draw_text(details_x+32, details_y, name)
}