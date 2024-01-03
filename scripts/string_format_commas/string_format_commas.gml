

/// @param { Real } num
/// @returns a comma seperated string
function number_format_commas(num) 
{
	var r, i;
	r = string(num)
	for (i = string_length(r) - 2; i > 1; i -= 3) {
	    r = string_insert(",", r, i)
	}
	return r
}