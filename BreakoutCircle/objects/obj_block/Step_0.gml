// rotate around the center object
if (instance_exists(obj_center))
{
	// calculate the rotation coordinates around the center object
	block_x = rotate_radius*sin(degtorad(rotate_angle));
	block_y = rotate_radius*cos(degtorad(rotate_angle));
	
	// set our coordinates to match rotation coordinates
	x = obj_center.x + block_x;
	y = obj_center.y + block_y;
	
	// change our image angle to match rotation
	image_angle = rotate_angle;
	
	// increment our rotation angle each step
	rotate_angle += rotate_speed;
}

// if we drop below 0 hp
if (hp <= 0)
{
	if (instance_exists(obj_block))
	{
		with (obj_block)
		{
			// increase the rotation speed for each remaining block
			rotate_speed += rotate_speed_increase*sign(rotate_speed);	
		}
	}
	// destroy ourselves
	instance_destroy();	
}