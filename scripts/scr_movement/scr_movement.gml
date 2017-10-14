with (argument0)
{
	var objectName = object_get_name(argument0);
	
	// Calculate vertical movement
	verticalSpeed += selfGravity;
	
	// TODO: this breaks down when gravity is != 0.5
	if (timer)
	{
		verticalSpeed += selfGravity;
		timer = false;
	}
	else
	{
		verticalSpeed -= selfGravity;
		timer = true;
	}

	if (objectName == "obj_player")
	{
		if (doubleJumpAvailable && key_jump)
		{
			verticalSpeed = jumpHeight;
			doubleJumpAvailable = false;
		}

		onTheGround = (tilemap_get_at_pixel(tileMap, bbox_right, bbox_bottom + 1) != 0) || (tilemap_get_at_pixel(tileMap, bbox_left, bbox_bottom + 1) != 0);
		if (onTheGround)
		{
			if (key_jump)
			{
				verticalSpeed = jumpHeight;
				doubleJumpAvailable = true;
				onTheGround = false;
			}
			else
			{
				verticalSpeed = 0;
			}
		}
	}
	
	var boundingBoxOffset = (horizontalSpeed > 0 ? bbox_right : bbox_left) + horizontalSpeed;
	if ((tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_top) != 0) || (tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_bottom) != 0))
	{
		// if we have a collision, snap to the 32x32 grid (i.e., close the remaining distance to the wall but not over)
		x = horizontalSpeed > 0
			? x - (x % 32) + 31 - (bbox_right - x)
			: x - (x % 32) - (bbox_left - x);
	
		if (objectName == "obj_enemy")
		{
			// if the enemy hits a wall, have them turn around
			horizontalSpeed = -horizontalSpeed;
		}
		else
		{
			horizontalSpeed = 0;
		}
	}
	else if (objectName == "obj_enemy" && horizontalSpeed != 0 && tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_bottom + 1) == 0)
	{
		// if the enemy is about to walk off a ledge, have them turn around
		horizontalSpeed = -horizontalSpeed;
	}
	
	boundingBoxOffset = (verticalSpeed > 0 ? bbox_bottom : bbox_top) + verticalSpeed;
	if ((tilemap_get_at_pixel(tileMap, bbox_left, boundingBoxOffset) != 0) || (tilemap_get_at_pixel(tileMap, bbox_right, boundingBoxOffset) != 0))
	{
		// if we have a collision, snap to the 32x32 grid (i.e., close the remaining distance to the wall but not over)
		y = verticalSpeed > 0
			? y - (y % 32) + 31 - (bbox_bottom - y)
			: y - (y % 32) - (bbox_top - y);
	
		verticalSpeed = 0;
	}
}