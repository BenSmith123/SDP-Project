
if displayed_coins < global.coins
{
	var coin_diff = global.coins - displayed_coins
	
	if coin_diff == 1 
	{
		// skip the delay if the amount is small
		displayed_coins = global.coins
		add_coins_timer_set = false
		exit  
	}
	
	// add 5% of the difference each step for animation
	displayed_coins += (global.coins - displayed_coins) *0.05

	alarm[0] = 1
}
else
{
	add_coins_timer_set = false
}