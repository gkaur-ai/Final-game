draw_set_color(laser_color);
draw_set_alpha(0.8);
draw_line(x, y, x + laser_dx * laser_length, y + laser_dy * laser_length);
draw_set_alpha(1);



