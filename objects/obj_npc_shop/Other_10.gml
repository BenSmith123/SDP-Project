
instance_deactivate_all(true) // deactivate all oects except self

// set pause menu position
x2 = __view_get( e__VW.XView, 0 )+WIDTH/2
y2 = __view_get( e__VW.YView, 0 )+HEIGHT/2

// create the menu buttons
menu = instance_create(x2-300,y2,obj_pause_menu) // (-300 to separate the buttons evenly)
menu.text_sprite = spr_pause_resume // set the correct image for each button (resume)

menu = instance_create(x2,y2,obj_pause_menu)
menu.text_sprite = spr_pause_controls // adjust controls (android only)

menu = instance_create(x2+300,y2,obj_pause_menu)
menu.text_sprite = spr_pause_quit // quit
 
    


