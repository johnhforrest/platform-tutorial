// Get player input
var horizontalAxis = gamepad_axis_value(0, gp_axislh);

key_left = gamepad_button_check(0, gp_padl) || keyboard_check(vk_left) || horizontalAxis < -0.5;
key_right = gamepad_button_check(0, gp_padr) || keyboard_check(vk_right) || horizontalAxis > 0.5;
key_jump = gamepad_button_check_pressed(0, gp_face1) || keyboard_check_pressed(vk_space);

// Calculate horizontal movement
var move = key_right - key_left;
horizontalSpeed = move * walkSpeed;

// Calculate vertical movement
verticalSpeed += selfGravity;

// Detecting jump
if (doubleJumpAvailable && key_jump)
{
	verticalSpeed = -7;
	doubleJumpAvailable = false;
}

if (place_meeting(x, y + 1, obj_wall) && key_jump)
{
	verticalSpeed = -7;
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