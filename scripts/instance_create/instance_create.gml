/// @description Creates an instance of a given object at a given position (default to same layer as creating object)
/// @param _x
/// @param _y
/// @param obj
function instance_create(_x, _y, obj) {
	return instance_create_depth( _x, _y, depth, obj)
}
