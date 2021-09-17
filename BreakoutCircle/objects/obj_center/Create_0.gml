// set our circle precision to a higher values, so that our visuals look nicer
draw_set_circle_precision(64);

// change our cursor sprite, to match our visuals
cursor_sprite = spr_cursor;

// define the radius of the circle the paddle will rotate around
circle_radius = 400;

// define our win condition and set it to false by default
win = false;

// define the variables that govern the circle that expands when the player wins
win_circle_expand_speed = 10;
win_circle_radius = 0;

// define the distance between each ring of blocks
distance_between_rings = 40;

/*
define the 2D array that governs the blocks that spawn at the start of the game.
each row in the array spawns a new ring of blocks with the characteristics below:
- number of blocks
- rotation speed (positive numbers for clockwise rotation, negative numbers for counter-clockwise rotation)
*/
blocks_array = 
[
	[3, 0.65],
	[6, -0.55],
	[8, 0.45],
	[8, -0.35],	
	[12, 0.25]		
]

// for each row in our block array
for (var i = 0; i < array_length(blocks_array); i += 1)
{
	// for each block that we should spawn
	for (var k = 0; k < blocks_array[i][0]; k += 1)
	{
		// get the angle between our block so that they're evenly spread out
		angle_between_blocks = 360/blocks_array[i][0];
		
		// instantiate our block
		block = instance_create_layer(x, y, "Instances", obj_block);
		
		// set our block's rotation angle, rotation speed, and rotation radius
		block.rotate_angle = angle_between_blocks*k;
		block.rotate_speed = blocks_array[i][1];
		block.rotate_radius = distance_between_rings*(i+1);
	}
}