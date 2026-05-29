// SAVE ORIGINAL POSITION
var_x = x;
var_y = y;
// Apply shake if active 
if (shake_amount > 0) {
	var offset_x = random_range(-shake_amount, shake_amount);
	var offset_y = sin(current_time*shake_speed)*shake_amount;
	x += offset_x;
	y += offset_y; 
}

// Draw the bridge sprite 
draw_self();

// Restore position
x = var_x
y = var_y



