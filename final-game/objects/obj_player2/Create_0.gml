// MOVENT VARIABLES 
playerspeed = 5;  // Left right speed 
// MOVEMENT INPUTS 
jump_speed = -15;	// Upward jump speed
gravity_force = 0.5;	// Gravity strength
move_x = 0;			// Horizontal movement
move_y = 0;			// Vertical movement 
max_fall_speed = 10; // max downward speed so yuo can still track the object

// STATE VARIABLES 
is_based = false;      // On the base ?
is_climbing = false;      // On ladder?
climb_speed = 2.5;        // Climbing speed

// Shooting cooldown control
can_shoot = true;
cooldown_time = 15; // frames (15 = 0.25s at 60FPS)

// Live system 
global.lives = 3; // starting lives 
