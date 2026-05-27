// MOVE ELEVATOR
if (direction_up) {
	y -= speed_y;
	if (y <= top_y) direction_up = false;
}
else {
	y += speed_y;
	if (y >= bottom_y) direction_up = true;
}
// CARRY PLAYER IF STANDING ON ELEVATOR 
var_player = instance_place(x, y-1, player_object);
if (var_player != noone) {
	var_player.y += (y-yprevious); // Move player by elelvator's movement
}



