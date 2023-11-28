

///@description - go to the next room depending on what room you're on
function getPlayableMapsOrder()
{
	return 
	[
		// add maps here to be included in 
		room_test,
		room_village,
		room_5,
		room_4
	]
}


function move_to_map(previousMap = false) 
{
	var currentMapIndex = getCurrentMapIndex()
	if (currentMapIndex == -1) { exit } // TODO - what if map doesn't exist?
	
	var nextMapIndex = previousMap 
		? currentMapIndex-1
		: currentMapIndex+1
		
	var maps = getPlayableMapsOrder()

	room_goto(maps[nextMapIndex])
}

function getCurrentMapIndex()
{
	var maps = getPlayableMapsOrder()
	
	for (var i = 0; i < array_length(maps); ++i) {
	    if (maps[i] == room) return i
	}
	
	return -1
}

