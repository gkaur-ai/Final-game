
// Check left/right boundaires 
if (x < 0) {
	x = 0;
	direction = irandom_range(0, 90); // bounce right 
}
if (x > room_width) {
	x = room_width;
	direction = irandom_range(90, 180); // bounce left 
}




// Check top/bottom boundaires 
if (y < 0) {
	y = 0;
	direction = irandom_range(45, 135); // bounce down 
}
if (y > room_height) {
	y = room_height;
	direction = irandom_range(135, 225) mod 180; // bounce up 
}


