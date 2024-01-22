function create_pause_menu()
{
	// set pause menu position
	x2 = global.screen_w/2
	y2 = global.screen_h/2
	
	// create the menu buttons
	menu = instance_create(x2-300,y2,obj_pause_menu) // (-300 to separate the buttons evenly)
	menu.text_sprite = spr_pause_resume // set the correct image for each button (resume)

	menu = instance_create(x2,y2,obj_pause_menu)
	menu.text_sprite = spr_pause_controls // adjust controls (android only)

	menu = instance_create(x2+300,y2,obj_pause_menu)
	menu.text_sprite = spr_pause_quit // quit

    
}