// MOVEMENT INPUTS 

// Horizontal Movement
if (keyboard_check(vk_left)) { // Checks if the left arrow key is pressed
    x -= 5; // Moves the player left
}
if (keyboard_check(vk_right)) { // Checks if the right arrow key is pressed
    x += 5; // Moves the player right
}

// Vertical Movement
if (keyboard_check(vk_up)) { // Checks if the up arrow key is pressed
    y -= 5; // Moves the player up
}
if (keyboard_check(vk_down)) { // Checks if the down arrow key is pressed
    y += 5; // Moves the player down
}
 