function display_banner_message(argument0) {

	// argument0 = message (string)

	if not instance_exists(obj_message_banner)
	{
	    instance_create(x,y,obj_message_banner)
	}

	obj_message_banner.message_que += 1
	obj_message_banner.text[obj_message_banner.message_que] = argument0
}


function level_up_display_message()
{
	if global.level == 5
	{
	    display_banner_message("Congratulations on reaching level 5#[+100 coins]")
	    global.coins += 100
		global.coins_collected += 100
	}
       
	if global.level == 6
	{
	    display_banner_message("Once you are level 10 you may#pick a class")
	}
    
	if global.level == 9
	{
	    display_banner_message("Next time you level up you may#pick a class")
	}
	
	if global.level == 20
	{
	    display_banner_message("Your stats will be assigned automatically.#You can still customize them")
	}
}