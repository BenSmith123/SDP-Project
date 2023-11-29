///@description - sets the player class details to variables on the object calling this function
function set_class_details(class)
{
	switch (class) {
	    case PlayerClass.Hunter:
	        class_name = "Hunter"
			class_sprite = spr_player_attack_3
			class_description = "+2 Speed#+50 Accuracy"
	        break;
			
		case PlayerClass.Ninja:
	        class_name = "Ninja"
			class_sprite = spr_class_ninja
			class_description = "+2 Jump#Skill: #Double jump"
	        break;
			
		case PlayerClass.Fighter:
	        class_name = "Fighter"
			class_sprite = spr_player_attack_7
			class_description = "+100 Attack#Skill: #Shield ability"
	        break;
			
		case PlayerClass.Spellcaster:
	        class_name = "Spellcaster"
			class_sprite = spr_player_attack_2
			class_description = "+100 Heal#Skill: #Teleport"
	        break;
	}
}



//@description - handler for when a class is selected
function on_select_class()
{
	switch (class) {
	    case PlayerClass.Hunter:
			global.walk_speed += 1
			global.accuracy += 50
	        break;
			
		case PlayerClass.Ninja:
			global.jump += 2
	        break;
			
		case PlayerClass.Fighter:
			global.attack += 100
	        break;
			
		case PlayerClass.Spellcaster:
			global.heal_amount += 100
	        break;
	}
}