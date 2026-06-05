// MOVEMENT INPUTS 
// Movement Variables
var accel = 0.5; // Acceleration rate
var max_speed = 5; // Maximum movement speed

// Update Velocity
if (keyboard_check(vk_left))
{
    hspeed = max(-max_speed, hspeed - accel); // Accelerates left
}
else if (keyboard_check(vk_right))
{
    hspeed = min(max_speed, hspeed + accel); // Accelerates right
}
else
{
    hspeed *= 0.9; // Applies friction when no key is pressed
}

if (keyboard_check(vk_up)) {
    vspeed = max(-max_speed, vspeed - accel); // Accelerates up
}
else if (keyboard_check(vk_down)) {
    vspeed = min(max_speed, vspeed + accel); // Accelerates down
}
else {
    vspeed *= 0.9; // Applies friction when no key is pressed
// CART SPEED 



// COLLISON WITH THE CART
if (place_meeting(x, y, obj_cart)) {
	var_cart = instance_place(x, y, obj_cart);
	if (var_cart != noone) {
		// Store the offset between player and cart
		attached_cart = var_cart;
		offset_x = x-var_cart.x;
		offset_y = y- var_cart.y;
	}
}
else {
	attached_cart = noone;
}

// End step event
if (attached_cart != noone && instance_exists(attached_cart)) {
	x = attached_cart.x + offset_x;
	y = attached_cart.y + offset_y;
}
}

// Shooting mechanic with cooldown
if (mouse_check_button_pressed(mb_left) && can_shoot) {
	instance_create_layer(x, y, "Instances", obj_bullet);
	can_shoot = false;
	alarm[0] = cooldown_time; // start cooldown
}

// Live system 
global.lives -= 1;
if (global.lives <=0) {
	room_restart()
}
// Shooting bullets
//if (keyboard_check_pressed(vk_tab)) { 
	//var_bullet = instance_create_layer(x, y, "Instances", obj_bullet); // Creates a bullet instance
	//bullet.direction = 0; // Sets the bullet's direction (modify based on player facing direction)
	//bullet.speed = 10; // Assigns speed to the bullet 
//}






