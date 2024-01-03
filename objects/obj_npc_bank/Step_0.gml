
text = global.coins_stored == 0
? "Would you like to deposit all of your money for safe keeping?"
: $"You have ${number_format_commas(global.coins_stored)} in your account"
