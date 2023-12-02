///@description Drop items/coins. Called when mob is killed
function mob_drop()
{
	
	var coin_min = 0
	var coin_max = 10
	
	// TODO - enum for each mob instead of checking object_index?	
	switch(object_index)
	{
		case obj_ai_1: 
			mob_drop_item(obj_item_drone_piece)
		break
		
		case obj_ai_2: 
			mob_drop_item(obj_item_drone_heart)
			coin_min = 20
			coin_max = 40
		break
		
		case obj_mob_training_bot: 
			mob_drop_item(obj_item_battery)
			coin_max = 0
		break
		
		case obj_mob_dragon: 
			mob_drop_item(obj_item_dragon_egg)
			coin_min = 20
			coin_max = 40
		break
	}
	
	// common drops!
	mob_drop_item(obj_item_potion_blue, 20)
	mob_drop_item(obj_item_banana, 100)
	mob_drop_coins(coin_min, coin_max)

}


/// @param obj_index {Instance.Id}
function mob_drop_item(obj_index, chance = 0) 
{
	if chance != 0 // default skip this and 100% spawn
	{ 
		if !random_chance(chance) { exit }
	}
	
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