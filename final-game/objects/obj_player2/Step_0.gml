// MOVEMENT INPUTS 

// Horizontal Movement
if (keyboard_check(vk_left)) { // Checks if the left arrow key is pressed
    x -= playerspeed; // Moves the player left
}
if (keyboard_check(vk_right)) { // Checks if the right arrow key is pressed
    x += playerspeed; // Moves the player right
}

// Vertical Movement
if (keyboard_check(vk_up)) { // Checks if the up arrow key is pressed
    y -= playerspeed; // Moves the player up
}
if (keyboard_check(vk_down)) { // Checks if the down arrow key is pressed
    y += playerspeed; // Moves the player down
}
 



// Shooting mechanic with cooldown
if (mouse_check_button_pressed(mb_left) && can_shoot) {
	instance_create_layer(x, y, "Instances", obj_bullet);
	can_shoot = false;
	alarm[0] = cooldown_time; // start cooldown
}

// Live system 

if (global.lives <=0) {
	room_restart()
}

