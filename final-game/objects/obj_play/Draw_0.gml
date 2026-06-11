draw_self(); // Draw the player sprite first

var hp_percent = (hp / max_hp) * 100;
draw_healthbar(
x - 32, y - 40, // Top-left corner
x + 32, y - 30, // Bottom-right corner
hp_percent,
c_black, // Background color
c_red, // Color at 0% health
c_lime, // Color at 100% health
0, // Fill direction (0 = left to right)
true, // Show background
true // Show border
)


