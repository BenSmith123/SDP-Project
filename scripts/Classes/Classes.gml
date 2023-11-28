///@description - sets the player class details to variables on the object calling this function
function set_class_details(class)
{
	switch (class) {
	    case PlayerClass.Hunter:
	        class_name = "Hunter"
			class_sprite = spr_player_attack_3
			class_description = "Highest range #Skill: #-"
	        break;
			
		case PlayerClass.Ninja:
	        class_name = "Ninja"
			class_sprite = spr_class_ninja
			class_description = "Agility & range #Skill: #Double jump"
	        break;
			
		case PlayerClass.Fighter:
	        class_name = "Fighter"
			class_sprite = spr_player_attack_7
			class_description = "High attack#Skill: #Shield ability"
	        break;
			
		case PlayerClass.Spellcaster:
	        class_name = "Spellcaster"
			class_sprite = spr_player_attack_2
			class_description = "Skill: #Teleport"
	        break;
	}
}

