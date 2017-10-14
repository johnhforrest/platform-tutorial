if (!done)
{
	scr_movement(object_index);
	
	x += horizontalSpeed;
	y += verticalSpeed;
	
	if (verticalSpeed == 0)
	{
		done = true;
		image_index = 1;
	}
}

