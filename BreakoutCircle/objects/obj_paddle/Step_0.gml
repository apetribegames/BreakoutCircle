// if our center object exists and we haven't won yet
if (instance_exists(obj_center)) and (obj_center.win == false)
{
	// get the angle from the center object to our mouse position
	mouse_angle = point_direction(obj_center.x, obj_center.y, mouse_x, mouse_y) + 90;
	
	// set our paddle coordinates along the radius of a circle centered around the center object and based on our mouse angle
	paddle_x = obj_center.circle_radius*sin(degtorad(mouse_angle));
	paddle_y = obj_center.circle_radius*cos(degtorad(mouse_angle));
	
	// set our coordinates to match rotation coordinates
	x = obj_center.x + paddle_x;
	y = obj_center.y + paddle_y;
	
	// change our image angle to match rotation
	image_angle = mouse_angle;
}