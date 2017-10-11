key_fire = gamepad_button_check(0, gp_shoulderrb) || gamepad_button_check(0, gp_face3);

if (key_fire && cooldown <= 0)
{
	recoil = 4;
	cooldown = 12;
	with (instance_create_layer(x + (15 * image_xscale), y, "Bullets", obj_bullet))
	{
		speed = 8;
		direction = point_direction(x, y, x + other.image_xscale, y);		
		image_angle = direction;
	}
}

