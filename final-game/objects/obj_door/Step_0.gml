// DOOR COLLISION WITH PLAYER 
if (place_meeting(x, y, obj_player)) {
	if (obj_player.target_scale >= obj_player.large_size ) { 
	// Open the door 
	global.show_message = true;
	global.message_timer = room_speed * 10; // 10 seconds 
	}
	else {
		// Player is too small 
		show_message("The door is too small. Grow bigger!");
		
	}
	
}



