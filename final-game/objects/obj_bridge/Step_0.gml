// CHECK IF PLAYER IS OVERLAPPING THE BRIDGE
if (place_meeting(x, y, obj_player)) {
	// Increase shake amount 
    shake_amount = shake_strength;
}
  else {
	// Gradually reduce shake 
	shake_amount = max(0, shake_amount - shake_decay);
}
