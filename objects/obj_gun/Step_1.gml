x = obj_player.x;
y = obj_player.y + 10;

var verticalAxis = gamepad_axis_value(0, gp_axislv);
key_up = verticalAxis < -0.5;
key_down = verticalAxis > 0.5;
key_fire = gamepad_button_check(0, gp_shoulderrb) || gamepad_button_check(0, gp_face3);

if (obj_player.image_xscale == 1)
{
	image_xscale = 1;
	image_yscale = 1;
	
	if (key_up)
	{
		image_angle = 90;
	}
	else if (key_down)
	{
		image_angle = 270;
	}
	else
	{
		image_angle = 0;
	}
}
else
{
	image_yscale = -1;
	
	if (key_up)
	{
		image_angle = 270;
		image_xscale = -1;
	}
	else if (key_down)
	{
		image_angle = 90;
		image_xscale = -1;
	}
	else
	{
		image_angle = 180;
		image_xscale = 1;
	}
}

if (cooldown > 0)
{
	cooldown--;
}

if (recoil > 0)
{
	recoil--;
}

if (key_fire && cooldown <= 0)
{
	recoil = 4;
	cooldown = 12;
	with (instance_create_layer(x, y, "Bullets", obj_bullet))
	{
		speed = 8;
		direction = other.image_angle * other.image_yscale;		
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);