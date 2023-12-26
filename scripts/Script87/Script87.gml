function temp(damage)
{
	var digits_num = string_length(string(damage))
	
	var digits = []
	
	for(var i = 0; i < digits_num; i++)
	{
		var a = get_digit(damage, i)
		array_push(digits, a)
	}
	
	//log_player_message(array_reverse(digits))
}


function get_digit(num, n)
{
	return floor((num / power(10, n)) % 10)
}