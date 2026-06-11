	//  CONTROLS 
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);  // Determine left or right movement
move_x *= move_speed;

jump_pressed = keyboard_check_pressed(vk_space);  // Check if jumping


// # CHECK FOR COLLISIONS
// Check if standing on ground
is_grounded = place_meeting(x, y+2, obj_base);
is_ceiling = place_meeting(x, y-2, obj_base);

// Check if touching a ladder
is_climbing = place_meeting(x, y, obj_ladder);

//  MOVEMENT 
// Climbing
if (is_climbing) {
	move_y = keyboard_check(vk_down) - keyboard_check(vk_up);  // Check if going up or down
	move_y *= climb_speed;  // Move up or down the ladder
}
else {
// Jumping
	if (is_grounded) {
		move_y = 0;  // Get rid of gravity which presses object into the ground (too much friction which prevents horizontal movement)
		if (jump_pressed) {
			move_y = jump_speed;  // Jump
		}
	}
	
// Falling
	else if (!is_grounded && move_y < max_fall_speed) {  // Only allow gravity if not on the ground and if below max fall speed
		move_y += gravity_force;
	}
}

// AVOID STICKING TO THE BOTTOM OF PLATFORMS 
if (is_ceiling) { // If hitting ceiling (platform above), move back down
	if (move_y < 0) {
		move_y = 0;	
	}
}

//  OUTSIDE ROOM 
if (y < -200 || y > room_height+20 || x < -20 || x > room_width+20) {  // Set the 4 boundaries of the room
	room_restart(); // Restart room if object is outside the room
}

//  ACTUALLY MOVE THE PLAYER OBJECT
move_and_collide(move_x, move_y, obj_base);  // Move the object

// Health bar 
//if (place_meeting(x, y, obj_enemy)){
	//hp = 75
	
	
//}


// Shooting mechanic with cooldown
if (mouse_check_button_pressed(mb_left) && can_shoot) {
	instance_create_layer(x, y, "Instances", obj_bullet);
	can_shoot = false;
	alarm[0] = cooldown_time; // start cooldown

}
