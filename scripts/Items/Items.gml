
enum ItemType
{
	Equipable,
	Usable,
	Misc
}
	
enum ItemRarity
{
	Common,
	Uncommon,
	Rare,
	Legendary,
	Mythic // ?
}
	
enum ItemId
{
	DronePiece,
	DroneHeart,
	Helmet,
	Banana,
	Battery,
	DragonEgg,
}


function get_item(item_id)
{
	// create an array of all items
	// NOTE - this was easier/faster to deal with than creating maps etc.
	var all_items_array = [
		create_item(
		{
			iid: ItemId.DronePiece,
			name: "Drone piece",
			type: ItemType.Misc,
			description: "-",
			sprite: spr_drone_piece,
			rarity: ItemRarity.Common,
			stack_size: 30,
			is_sellable: true,
			sell_value: 30
		}),
		create_item(
		{
			iid: ItemId.DroneHeart,
			name: "Drone heart",
			type: ItemType.Misc,
			description: "Used to power the Drone Operator",
			sprite: spr_drone_heart,
			rarity: ItemRarity.Common,
			stack_size: 9,
			is_sellable: true,
			sell_value: 100
		}),
		create_item(
		{
			iid: ItemId.Helmet,
			name: "Helmet",
			type: ItemType.Misc,
			description: "-",
			sprite: spr_drone_piece,
			rarity: ItemRarity.Common,
			stack_size: 10,
			is_sellable: true,
			sell_value: 100
		}),
		create_item(
		{
			iid: ItemId.Banana,
			name: "Banana",
			type: ItemType.Misc,
			description: "1/100 chance of a finding",
			sprite: spr_item_banana,
			rarity: ItemRarity.Common,
			stack_size: 1,
			is_sellable: true,
			sell_value: 100
		}),
		create_item(
		{
			iid: ItemId.Battery,
			name: "Battery",
			type: ItemType.Misc,
			description: "-",
			sprite: spr_item_battery,
			rarity: ItemRarity.Common,
			stack_size: 10,
			is_sellable: true,
			sell_value: 100
		}),
		create_item(
		{
			iid: ItemId.DragonEgg,
			name: "Dragon Egg",
			type: ItemType.Misc,
			description: "-",
			sprite: spr_item_dragon_egg,
			rarity: ItemRarity.Rare,
			stack_size: 1,
			is_sellable: true,
			sell_value: 100
		})
	]

	var arr_length = array_length(all_items_array)
	
	// find the item and return it
	for (var i = 0; i < arr_length; i++) {
		if (all_items_array[i].iid == item_id)
		{ 
			return all_items_array[i]
		}
	}
}


// function for ensuring all times have the same attributes & can de defaulted easily
function create_item(item)
{
	return {	
		iid: item.iid,
		name: item.name,
		type: item.type,
		description: item.description,
		sprite: item.sprite,
		rarity: item.rarity,
		stack_size: item.stack_size, // 1 being unstackable
		is_sellable: item.is_sellable,
		sell_value: item.sell_value
	}
}