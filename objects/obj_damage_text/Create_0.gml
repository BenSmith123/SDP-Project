
depth = ObjectDepth.DamageText
image_alpha = 2

image_xscale = 0
image_yscale = 0

space_between_digits = 18

x = round(x)

digits = [0] // array of numbers to draw
num_of_digits = 1

get_digits = function(damage)
{
	digits = [] // clear the default 0
	num_of_digits = string_length(string(damage))

	for (var i = num_of_digits; i != 0; i--)
	{
		var digit = get_digit(damage, i-1)
		array_push(digits, digit)
	}
	
	// center the numbers based on the number of digits
	var sprite_center = space_between_digits / 2
	var move_left_by = sprite_center * (num_of_digits-1)

	x -= move_left_by
}

get_digit = function(num, n)
{
	return floor((num / power(10, n)) % 10)
}