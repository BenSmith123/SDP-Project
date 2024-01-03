
event_inherited()

label = "Secondary"

// no secondary equip
if global.equip_item_id_secondary == 0
{
	disabled = true
	exit
}

item_details = get_item(global.equip_item_id_secondary)

