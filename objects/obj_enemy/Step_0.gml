if (hitPoints <= 0)
{
	with (instance_create_layer(x, y, "Enemies", obj_dead))
	{
		direction = other.hitFrom;
		horizontalSpeed = lengthdir_x(3, direction);
		verticalSpeed = lengthdir_y(4, direction);
		
		if (sign(horizontalSpeed) != 0)
		{
			image_xscale = sign(horizontalSpeed);
		}
	}
	
	instance_destroy();
}

scr_movement(object_index);

// if the enemy is on the ground and not walking, start them walking
if (verticalSpeed == 0 && horizontalSpeed == 0)
{
	horizontalSpeed = walkSpeed;
}

x += horizontalSpeed;
y += verticalSpeed;

image_speed = 1;
if (horizontalSpeed == 0)
{
	sprite_index = spr_enemy;
}
else
{
	sprite_index = spr_enemy_running;
	image_xscale = sign(horizontalSpeed);
}