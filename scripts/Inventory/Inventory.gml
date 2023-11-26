///@description
///@param {Real} itemName - ItemId enum
///@param {Real} amount - default = 1
function inventory_add(itemName, amount = 1)
{
	array_push(global.inventory_array, [itemName, amount])
}

//function inventory_delete(itemName)
//array_delete()
