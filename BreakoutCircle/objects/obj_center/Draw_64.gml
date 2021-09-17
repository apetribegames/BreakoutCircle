// if the player won, draw an expanding red circle from the center of the screen
if (win == true)
{
	draw_circle_color(display_get_gui_width()/2, display_get_gui_height()/2, win_circle_radius, c_red, c_red, false);
	win_circle_radius += win_circle_expand_speed;
}