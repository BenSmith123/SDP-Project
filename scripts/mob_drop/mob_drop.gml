///@description Drop items/coins. Called when mob is killed
function mob_drop()
{
	
	// TODO - enum for each mob instead of checking object_index?	
	switch(object_index)
	{
		case obj_ai_1: 
			mob_drop_item(obj_item_drone_piece)
		break
		
		case obj_ai_2: 
			mob_drop_item(obj_item_drone_heart)
			mob_drop_coins(20,40)
		break
		
		case obj_mob_training_bot: 
			mob_drop_item(obj_item_drone_heart)
		break

	default:
		mob_drop_item(obj_item_potion_blue, 20)
	break;
	}
	
	mob_drop_coins()

}


/// @param obj_index {Instance.Id}
function mob_drop_item(obj_index, chance = 1) 
{
	if !random_chance(chance) { exit }
	
	var item = instance_create(x, y,obj_index)
	// randomise where the item is dropped
	item.hspeed = irandom_range(-3,3)
    item.vspeed = irandom_range(-2,-4)
}


///@description Create random num of coins in random directions from mob
function mob_drop_coins(minimum = 0, maximum = 10)
{
    var coin_num = irandom_range(minimum, maximum)
    repeat(coin_num)
    {
		mob_drop_item(obj_coin)
    }
}