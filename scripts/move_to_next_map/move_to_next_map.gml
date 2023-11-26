///@description - go to the next room depending on what room you're on
function move_to_next_map()
{
	var next_room = -1
	
	switch (room) {
	    case room1: next_room = room11; break
		case room11: next_room = room10; break
		case room10: next_room = room13; break
		case room13: next_room = room3; break
		case room13: next_room = room7; break
	}
	
	if (next_room == -1) { exit }
	room_goto(next_room)
}