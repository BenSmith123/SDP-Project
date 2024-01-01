
if displayed_coins < global.coins
{
	// add 5% of the difference each step for animation
	displayed_coins += (global.coins - displayed_coins) *0.05

	alarm[0] = 1
}
else
{
	add_coins_timer_set = false
}