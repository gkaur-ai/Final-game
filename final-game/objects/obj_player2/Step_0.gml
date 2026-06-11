
// Horizontal Movement
if (keyboard_check(vk_left)) { // Checks if the left arrow key is pressed
    x -= playerspeed; // Moves the player left
}
if (keyboard_check(vk_right)) { // Checks if the right arrow key is pressed
    x += playerspeed; // Moves the player right
}

// Vertical Movement
//if (keyboard_check(vk_up)) { // Checks if the up arrow key is pressed
   // y -= playerspeed; // Moves the player up
//}
//if (keyboard_check(vk_down)) { // Checks if the down arrow key is pressed
   // y += playerspeed; // Moves the player down
//}

jump_pressed = keyboard_check_pressed(vk_space);  // Check if jumping


// CHECK FOR COLLISIONS 
// Check if standing on ground
is_based = place_meeting(x, y+2, obj_base);
is_ceiling = place_meeting(x, y-2, obj_base);

// Check if touching a ladder
is_climbing = place_meeting(x, y, obj_ladder);

// MOVEMENT 
// Climbing
if (is_climbing) {
	move_y = keyboard_check(vk_down) - keyboard_check(vk_up);  // Check if going up or down
	move_y *= climb_speed;  // Move up or down the ladder
}
else {
// Jumping
	if (is_based) {
		move_y = 0;  // Get rid of gravity which presses object into the ground (too much friction which prevents horizontal movement)
		if (jump_pressed) {
			move_y = jump_speed;  // Jump
		}
	}
	
// Falling
	else if (!is_based && move_y < max_fall_speed) {  // Only allow gravity if not on the ground and if below max fall speed
		move_y += gravity_force;
	}
}

//  AVOID STICKING TO THE BOTTOM OF PLATFORMS 
if (is_ceiling) { // If hitting ceiling (platform above), move back down
	if (move_y < 0) {
		move_y = 0;	
	}
}

 



// Shooting mechanic with cooldown
if (mouse_check_button_pressed(mb_left) && can_shoot) {
	instance_create_layer(x, y, "Instances", obj_bullet);
	can_shoot = false;
	alarm[0] = cooldown_time; // start cooldown
}

// Live system 

// Laser Light 
if (mouse_check_button_pressed(mb_middle)) {
	var mx = mouse_x;
	var my = mouse_y;
	var dir = point_direction(x, y, mx, my);
	var laser = instance_create_layer(x, y, "Instances", obj_laser);
	laser.direction = dir;
	
}
if (mouse_check_button_released(mb_middle)){
	instance_destroy(obj_laser);
	
}

