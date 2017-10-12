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
horizontalSpeed = move * walkSpeed;

// Calculate vertical movement
verticalSpeed += selfGravity;

// Detecting jump
if (doubleJumpAvailable && key_jump)
{
	verticalSpeed = jumpHeight;
	doubleJumpAvailable = false;
}

if (place_meeting(x, y + 1, obj_wall) && key_jump)
{
	verticalSpeed = jumpHeight;
	doubleJumpAvailable = true;
}

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

x += horizontalSpeed;

// Detecting vertical collision before it happens
if (place_meeting(x, y + verticalSpeed, obj_wall))
{
	// Closing the gap between the player in the wall
	// This is required because the walkSpeed is greater than 1
	while (!place_meeting(x, y + sign(verticalSpeed), obj_wall))
	{
		y += sign(verticalSpeed);
	}
	
	// Now that we've detected a collision, stop the player from moving forward
	verticalSpeed = 0;
	doubleJumpAvailable = false;
}

y += verticalSpeed;

// Animating the player
if (!place_meeting(x, y + 1, obj_wall))
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
}