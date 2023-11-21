
health_colour = get_healthbar_colour(obj_player.hp, obj_player.max_hp)

// if health red, fade in hud warning
if health_colour == HealthColour.Red
{
	if low_health_alpha < 0.5 { low_health_alpha += 0.05 }
}
else if low_health_alpha != 0 // fade the low health hud away
{
	low_health_alpha -= 0.02
}
