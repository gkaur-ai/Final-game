// Position for the lives display 
var start_x = 20;
var start_y = 20; 

// Loop through and draw a heart sprite for each life 
for (var i = 0; i < global.lives; i++) {
	draw_sprite(spr_coin, 0, start_x + (i*32), start_y);
}





