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

scr_movement(object_index);

x += horizontalSpeed;
y += verticalSpeed;

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
}