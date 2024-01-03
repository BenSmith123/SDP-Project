
var coins_str = string(global.coins)
var coins_stored_str = string(global.coins_stored)

b.text = string_hash_to_newline($"Deposit#${number_format_commas(coins_str)}")
b.disabled = global.coins == 0

b2.text = string_hash_to_newline($"Withdraw#${number_format_commas(coins_stored_str)}")
b2.disabled = global.coins_stored == 0
