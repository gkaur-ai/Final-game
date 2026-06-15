// INCREASE THE PLAYER'S COIN COUNT 
other.coins_collected +=1;

// Destroy the coin instance
instance_destroy();
audio_play_sound(coin_collected, 1, false);

// Check if all coins are collected 
if (other.coins_collected >= other.coins_needed) {
	show_message_async( "You have collect all the coins ! Now go to the purple protal to proceed.")
}



