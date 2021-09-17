// if we're attached to the paddle (for the start of the game), follow paddle's location while staying slightly in front
if (instance_exists(obj_paddle)) and (attached_to_paddle == true)
{
	x = obj_paddle.x + lengthdir_x(attached_to_paddle_distance, obj_paddle.image_angle+90);
	y = obj_paddle.y + lengthdir_y(attached_to_paddle_distance, obj_paddle.image_angle+90);
}

// if the player clicks with the left mouse button, release the ball from the paddle
if (mouse_check_button_pressed(mb_left)) and (attached_to_paddle == true)
{
	// set our angle and speed based on the paddle's position
	speed = speed_base;
	direction = obj_paddle.image_angle+90;
	
	// we are no longer attached to the paddle
	attached_to_paddle = false;
}

// if the player presses the escape key, quit the game
if (keyboard_check(vk_escape))
{
	game_end();	
}