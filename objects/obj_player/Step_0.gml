// Get player input
key_jump = gamepad_button_check_pressed(0, gp_face1);

if (abs(gamepad_axis_value(0, gp_axislh)) > 0.4)
{
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
}
else
{
	key_left = 0;
	key_right = 0;
}

// Calculate horizontal movement
var move = key_right - key_left;
horizontalSpeed = round(move * walkSpeed);

// Calculate vertical movement
verticalSpeed += selfGravity;
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

if (doubleJumpAvailable && key_jump)
{
	verticalSpeed = jumpHeight;
	doubleJumpAvailable = false;
}

var onTheGround = (tilemap_get_at_pixel(tileMap, bbox_right, bbox_bottom + 1) != 0) || (tilemap_get_at_pixel(tileMap, bbox_left, bbox_bottom + 1) != 0);
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

// Detecting a horizontal collision with the wall tiles
var boundingBoxOffset = (horizontalSpeed > 0 ? bbox_right : bbox_left) + horizontalSpeed;
if ((tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_top) != 0) || (tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_bottom) != 0))
{
	// if we have a collision, snap to the 32x32 grid (i.e., close the remaining distance to the wall but not over)
	x = horizontalSpeed > 0
		? x - (x % 32) + 31 - (bbox_right - x)
		: x - (x % 32) - (bbox_left - x);
	
	horizontalSpeed = 0;
}

// Detecting a vertical collision with the wall tiles
if (!onTheGround)
{
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

x += horizontalSpeed;
y += verticalSpeed;

/*
// Animating the player
if (!onTheGround)
{
	sprite_index = spr_player_jump;
	
	// Don't loop the animation, we'll pick the index manually based on whether we are going up or down
	image_speed = 0;
	image_index = sign(verticalSpeed) ? 0 : 1;
}
else
{
	image_speed = 1;
	if (horizontalSpeed == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_player_running;
	}
}

if (horizontalSpeed != 0)
{
	image_xscale = sign(horizontalSpeed);
}*/