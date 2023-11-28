
instance_deactivate_all(true) // deactivate all objects except self

// set button positions
var x2 = __view_get( e__VW.XView, 0 )+WIDTH/2
var y2 = __view_get( e__VW.YView, 0 )+HEIGHT/2

// create the class buttons
var button = instance_create(x2-300,y2,obj_class_button) // (-300 to separate the buttons evenly)
button.class = PlayerClass.Hunter

button = instance_create(x2-100,y2,obj_class_button)
button.class = PlayerClass.Fighter

button = instance_create(x2+100,y2,obj_class_button)
button.class = PlayerClass.Spellcaster

button = instance_create(x2+300,y2,obj_class_button)
button.class = PlayerClass.Ninja


//instance_activate_object(obj_class_button)

