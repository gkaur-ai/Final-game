// INPUT - DETECT CONTROL KEYS 
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;
var jump_pressed = keyboard_check_pressed(vk_space); // var makes this a local variable

// COLLISION CHECKS 
// Check if standing on the ground
is_ground = place_meeting(x, y+2, ground_object);
is_ceiling = place_meeting(x, y-2, ground_object);

// MOVEMENT - ACTUALLY MOVE PIXALS 
if (is_jumping) {
move_y = keyboard_check(vk_down) - keyboard_check(vk_up); // Check if going up or down
move_y *= jump_speed;  // Move up or down the ladder 
}
else {
// Jumping
	if (is_ground) {
		move_y = 0; // Get rid of gravity which presses object into the ground
		if (jump_pressed) {
			move_y = jump_speed; // Jump
	}
}

// Falling 
	else if (!is_ground && move_y < max_fall_speed ) { // Only allow gravity if not on tl
		move_y += gravity_force
	}
}

// AVOID STICKING TO THE BOTTOM OF PLATFORMS 
if (is_ceiling) { // If hitting ceiling , move back down
	if (move_y < 0) {
		move_y = 0;
	}
}
//MOVE THE PLAYER
move_and_collide(move_x, move_y, ground_object); // Move the object

//OUTSIDE ROOM
if (y < -200 || y> room_height+20 || x < -20 || x> room_width+20) {		// Set the 4 boundaires of the room 
	room_restart(); // Restart room if object is outside thr room 
}

// GET COIN
if place_meeting(x, y, coin_object) {
	got_coin = true; 
	// Destroy key
	var 
}


// DOOR COLLISION 





