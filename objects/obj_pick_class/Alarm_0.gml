
instance_deactivate_all(true) // deactivate all objects except self

// set button positions
x2 = __view_get( e__VW.XView, 0 )+WIDTH/2
y2 = __view_get( e__VW.YView, 0 )+HEIGHT/2

// create the class buttons
button = instance_create(x2-300,y2,obj_class_button) // (-300 to separate the buttons evenly)
button.class = "Hunter"

button = instance_create(x2-100,y2,obj_class_button)
button.class = "Fighter"

button = instance_create(x2+100,y2,obj_class_button)
button.class = "Spellcaster"

button = instance_create(x2+300,y2,obj_class_button)
button.class = "Ninja"

//instance_activate_object(obj_class_button)

