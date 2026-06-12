draw_set_color(c_white);
draw_text(20, 20, "Coins:" +string(coins_collected) + "/" + string(coins_needed));

// HEALTH BAR
var _health_percentage = (hp / max_hp) * 100;

// 2. Draw the health bar using the percentage variable
draw_healthbar(x - 32, y - 48, x + 32, y - 40, _health_percentage, c_black, c_red, c_green, 0, true, true);


