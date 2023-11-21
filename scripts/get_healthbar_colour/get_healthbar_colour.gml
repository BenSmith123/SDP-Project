/// @param hp {Real}
/// @param max_hp {Real}
/// @return {Real} HealthColour enum
function get_healthbar_colour(hp, max_hp)
{
	if hp <= max_hp*0.2 { return HealthColour.Red }
	if hp <= max_hp*0.5 { return HealthColour.Orange }
	
	return HealthColour.Green
}