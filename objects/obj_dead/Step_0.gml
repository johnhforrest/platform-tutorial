if (!done)
{
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
		horizontalSpeed = 0;
	}

	// Detecting vertical collision before it happens
	if (place_meeting(x, y + verticalSpeed, obj_wall))
	{
		if (verticalSpeed > 0)
		{
			done = true;
			image_index = 1;
		}
		
		while (!place_meeting(x, y + sign(verticalSpeed), obj_wall))
		{
			y += sign(verticalSpeed);
		}
	
		verticalSpeed = 0;
	}
	
	x += horizontalSpeed;
	y += verticalSpeed;
}