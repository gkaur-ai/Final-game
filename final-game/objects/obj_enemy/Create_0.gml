
// Movement settings
move_speed = 2;          // Horizontal speed
direction_timer = 0;     // Countdown until next direction change
direction_time_min = 30; // Minimum frames before changing direction (~0.5s at 60fps)
direction_time_max = 90; // Maximum frames before changing direction (~1.5s)

// Start moving in a random direction (-1 = left, 1 = right)
hdir = choose(-1, 1);









/*
// Random direction (0-360 degrees)
direction = irandom(179);

// Movement speed
speed = 2;

// Time until next direction change
alarm[0] = irandom_range(30, 90); // 0.5-1.5 second at 60 FPS

*/
