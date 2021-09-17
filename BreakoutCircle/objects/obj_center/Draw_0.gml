// draw a circle of the possible paddle positions
draw_set_alpha(0.3);
draw_circle(x, y, circle_radius, true);
draw_set_alpha(1);

// draw ourselves
draw_self();