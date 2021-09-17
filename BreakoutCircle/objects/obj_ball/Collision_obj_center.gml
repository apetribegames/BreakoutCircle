// if the ball collides with the center object, prevent the remaining blocks from rotating
if (instance_exists(obj_block))
{
	with (obj_block)
	{
		rotate_speed = 0;		
	}
}

// if the ball collides with the center object, prevent the ball from moving
if (instance_exists(obj_ball))
{
	obj_ball.speed = 0;	
}

// if we have not yet set the win condition on the center object, set it now and start a timer to end the game
if (other.win == false)
{
	other.win = true;
	other.alarm[0] = room_speed*4;	
	
	// hide our mouse cursor
	cursor_sprite = spr_none;
}