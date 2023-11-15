function display_banner_message(argument0) {

	// argument0 = message (string)

	if not instance_exists(obj_message_banner)
	{
	    instance_create(x,y,obj_message_banner)
	}

	obj_message_banner.message_que += 1
	obj_message_banner.message[obj_message_banner.message_que] = argument0



}
