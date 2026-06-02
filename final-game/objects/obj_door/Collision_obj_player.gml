// DOOR COLLISION WITH PLAYER 
if (place_meeting(x, y, obj_player)) {
	if (obj_player.target_scale >= obj_player.large_size ) { 
	//Open the door 	
}
}
    else {
		 //Player is too small 
global.show_message = true;
	global.message_timer = room_speed * 10; // 10 seconds 
	// COLLISION DOOR MESSAGE
if (global.show_message) {
	global.message_timer -= 1;
	if (global.message_timer <=0) {
	 global.show_message = false;
	}
		
	}
	
}




