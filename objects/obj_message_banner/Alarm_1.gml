
fade_out = false

// move each message down the que
for(i = 0; i < message_que; i++)
{
    message[i] = message[i+1]
}

alarm[0] = 360 // reset the countdown for the next message

message_que -= 1 // take one off the que

if message_que = 0 {fade_out = true}


