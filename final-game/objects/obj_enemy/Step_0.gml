// Check left/right boundaires 
if (x < 0) {
	x = 0;
	direction = irandom_range(0, 180); // bounce right 
}
if (x > room_width) {
	x = room_width;
	direction = irandom_range(180, 360); // bounce left 
}

// Check top/bottom boundaires 
if (y < 0) {
	y = 0;
	direction = irandom_range(90, 270); // bounce down 
}
if (y > room_height) {
	y = room_height;
	direction = irandom_range(270, 450) mod 360; // bounce up 
}



