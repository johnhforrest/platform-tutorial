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

// Calculate vertical movement
verticalSpeed += selfGravity;

// Detecting horizontal collision before it happens
if (place_meeting(x + horizontalSpeed, y, obj_wall))
{
	// Closing the gap between the player in the wall
	// This is required because the walkSpeed is greater than 1
	while (!place_meeting(x + sign(horizontalSpeed), y, obj_wall))
	{
		x += sign(horizontalSpeed);
	}
	
	// Now that we've detected a collision, stop the player from moving forward
	horizontalSpeed = -horizontalSpeed;
}
else if (horizontalSpeed != 0 && !place_meeting(x + horizontalSpeed, y + 1, obj_wall))
{
	horizontalSpeed = -horizontalSpeed;
}

// Falling to the ground
if (place_meeting(x, y + verticalSpeed, obj_wall))
{
	while (!place_meeting(x, y + sign(verticalSpeed), obj_wall))
	{
		y += sign(verticalSpeed);
	}
	
	verticalSpeed = 0;
}

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