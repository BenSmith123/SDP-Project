
var coins_str = string(global.coins)
var coins_stored_str = string(global.coins_stored)

b.text = $"Deposit (${coins_str})"
b.disabled = global.coins == 0

b2.text = $"Withdraw (${coins_stored_str})"
b2.disabled = global.coins_stored == 0
