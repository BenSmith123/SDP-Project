
event_inherited()

name = "Claudia"

text = global.is_mobile 
	? "You can chat to NPC's when your close enough"
	: "Press E to interact with NPC's"
	
message_num = -1

chat_messages = 
[
	get_tips()[0],
	"You're not far from the town, there's no danger there",
	"What else you want, huh?"
]

