// change our draw alpha depending on our hp
if (hp <= 1)
{
	draw_alpha = 0.3;
}
else
{
	draw_alpha = 1;
}

// draw our sprite
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_white, draw_alpha);