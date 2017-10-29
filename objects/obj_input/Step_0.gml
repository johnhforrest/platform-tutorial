/// @description Reading input from the player

// A button
_jumpPressed = gamepad_button_check_pressed(0, gp_face1);
_jumpHeld = gamepad_button_check(0, gp_face1);

// B button
_cancelPressed = gamepad_button_check_pressed(0, gp_face2);

// X button
_attackPressed = gamepad_button_check_pressed(0, gp_face3);

// Right trigger
_dashPressed = gamepad_button_check_pressed(0, gp_shoulderrb);

// Start button
_startPressed = gamepad_button_check_pressed(0, gp_start);

// Horizontal sum
var key_left = 0;
var key_right = 0;
if (abs(gamepad_axis_value(0, gp_axislh)) > 0.4)
{
    key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
    key_right = max(gamepad_axis_value(0, gp_axislh), 0);
}

_horizontalSum = round(key_right - key_left);

// Vertical sum
// Calculating menu movement (i.e., up and down)
var key_up = 0;
var key_down = 0;

if (abs(gamepad_axis_value(0, gp_axislv)) > 0.4)
{
    key_up = abs(min(gamepad_axis_value(0, gp_axislv), 0));
    key_down = max(gamepad_axis_value(0, gp_axislv), 0);
}

_verticalSum = round(key_up - key_down);