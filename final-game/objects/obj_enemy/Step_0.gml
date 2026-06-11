
// Countdown to change direction
direction_timer -= 1;
if (direction_timer <= 0) {
    // Pick a new random direction
    hdir = choose(-1, 1);
    // Reset timer
    direction_timer = irandom_range(direction_time_min, direction_time_max);
}

// Apply horizontal movement
x += hdir * move_speed;

// Optional: Prevent falling off the ground/platform
if (place_meeting(x, y + 1, obj_base) == false) {
    // Reverse direction if no ground ahead
    hdir *= -1;
    direction_timer = irandom_range(direction_time_min, direction_time_max);
}
 // Reverse if hitting a wall
if (place_meeting(x + hdir, y, obj_blocker)) {
   hdir *= -1;
    direction_timer = irandom_range(direction_time_min, direction_time_max);
}



/*

// Check left/right boundaires 
if (x < 0) {
	x = 0;
}
if (x > room_width) {
	x = room_width;

}

*/