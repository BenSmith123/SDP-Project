
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
	Helmet
}


function get_item(itemId)
{
	// create an array of all items
	// NOTE - this was easier/faster to deal with than creating maps etc.
	var allItemsArray = [
		create_item(
		{
			iid: ItemId.DronePiece,
			name: "Drone piece",
			type: ItemType.Misc,
			description: "hello",
			sprite: spr_drone_piece,
			rarity: ItemRarity.Common,
			stackSize: 30,
			isSellable: true,
			sellValue: 100
		}),
		create_item(
		{
			iid: ItemId.Helmet,
			name: "Helmet",
			type: ItemType.Misc,
			description: "hello",
			sprite: spr_drone_piece,
			rarity: ItemRarity.Common,
			stackSize: 1,
			isSellable: true,
			sellValue: 100
		})
	]

	var arrayLength = array_length(allItemsArray)
	
	// find the item and return it
	for (var i = 0; i < arrayLength; i++) {
		if (allItemsArray[i].iid == itemId)
		{ 
			return allItemsArray[i]
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
		stackSize: item.stackSize, // 1 being unstackable
		isSellable: item.isSellable,
		sellValue: item.sellValue
	}
}