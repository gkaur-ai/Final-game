// MOVEMENT VARIABLES
move_speed = 5;		// Left/Right speed
increased_speed = 7;	// Left/Right increased speed
jump_speed = -15;	// Upward jump speed
gravity_force = 0.5;	// Gravity strength
move_x = 0;			// Horizontal movement
move_y = 0;			// Vertical movement 
max_fall_speed = 10; // max downward speed so yuo can still track the object
target_scale = 0.7; // The scale we want to reach (1.0 is normal size)
scale_speed = 0.1;	// How fast the size changes per step
small_size = 0.5;	// Scale for shrinking
large_size = 0.9;	// Scale for growing 
normal_size = 0.7;	// Default size 
 


// STATE VARIABLES 
is_ground = false; // On ground ?
is_jumping = false; // Jumping ?
is_climbing = false; // climbing ? 

// OBJECT REFRENCES
ground_object = obj_ground;	 // Replace with your ground object's name
coin_object = obj_coin;		// Replace with your ground object's name 
player_object = obj_player; // Repace with your ground object's name 

// TRACK HOW MANY COINS COLLECTED 
coins_collected = 0; 
coins_needed = 11;