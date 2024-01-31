
function bank_deposit()
{
	if (global.coins == 0) { exit }
	
	global.coins_stored += global.coins
	log_player_message($"Deposited ${number_format_commas(global.coins)}")
	global.coins = 0
}

function bank_withdraw()
{
	if (global.coins_stored == 0) { exit }
	
	global.coins += global.coins_stored
	log_player_message($"Withdrew ${number_format_commas(global.coins_stored)}")
	global.coins_stored = 0
}
