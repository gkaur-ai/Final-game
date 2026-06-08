// INPUT - DETECT CONTROL KEYS 
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;
var jump_pressed = keyboard_check_pressed(vk_space); // var makes this a local variable
if keyboard_check_pressed(vk_down) {
	target_scale = small_size;
}
if keyboard_check_pressed(vk_up) {
	target_scale = large_size;
}
if keyboard_check_pressed(vk_backspace) {
	target_scale = normal_size;
}
// Smoothly transition image_xscale and image y_scale to the target_scale
image_xscale = lerp(image_xscale, target_scale, scale_speed)
image_yscale = lerp(image_yscale, target_scale, scale_speed)

// COLLISION CHECKS 
// Check if standing on the ground
is_ground = place_meeting(x, y+2, ground_object);
is_ceiling = place_meeting(x, y-2, ground_object);

// MOVEMENT - ACTUALLY MOVE PIXALS
	if (is_jumping) {
		move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
	//if (is_climbing) {
		//move_y = keyboard_check(vk_down) - keyboard_check(vk_up){
		//place_meeting(x, y, obj_elevator)
	}
	//}
	//}
// Jumping

	if (is_ground) {
		move_y = 0; // Get rid of gravity which presses object into the ground
		if (is_ground && jump_pressed) {
			move_y = jump_speed; // Jump
	}
}

// Falling 
	else if (move_y < max_fall_speed) {	// make sure it doesn't fall too fast
		move_y += gravity_force;	// if falling, move at gravity force 
	}


// AVOID STICKING TO THE BOTTOM OF PLATFORMS 
if (is_ceiling) { // If hitting ceiling , move back down
	if (move_y < 0) {
		move_y = 0;
	}
}

//MOVE THE PLAYER
move_and_collide(move_x, move_y, player_object); // Move the object

//OUTSIDE ROOM
if (y < -200 || y> room_height+20 || x < -20 || x> room_width+20) {		// Set the 4 boundaires of the room 
	room_restart(); // Restart room if object is outside thr room 
}

// GET COIN
//if place_meeting(x, y, coin_object) {
	//got_coin = true; 
	// Destroy coin
	//var myinstance = instance_place(x, y, coin_object)
	//instance_destroy(inst_1C35944);
	
//}

 //PORTAL COLLISION 
	if instance_place(x, y, obj_portal){
			room_goto_next();
	}





	