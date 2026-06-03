if (place_meeting(x, y, obj_player)) {
	if (obj_player.target_scale >= obj_player.large_size) {
		// Open the door
	}
}
else{
	// Player is too small
	if (place_meeting(x, y, obj_player.small_size)) {
		move_speed = 0;
	}
}