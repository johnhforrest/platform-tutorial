// Horizontal movement
var key_left = 0;
var key_right = 0;

if (abs(gamepad_axis_value(0, gp_axislh)) > 0.4)
{
    key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
    key_right = max(gamepad_axis_value(0, gp_axislh), 0);
}
    
_horizontalSpeed = round((key_right - key_left) * _walkSpeed);
   
move_horizontally();

if (_horizontalSpeed != 0)
{
    image_xscale = sign(_horizontalSpeed);
}

// Vertical movement
var key_jump = gamepad_button_check_pressed(0, gp_face1);

if (obj_game._abilities[ABILITIES.DOUBLEJUMP] == 1 && key_jump)
{
	_verticalSpeed = _jumpHeight;
	obj_game._abilities[ABILITIES.DOUBLEJUMP] = 0;
}

if (set_is_on_ground())
{
    // We are on the ground, reset jump state
    if (obj_game._abilities[ABILITIES.DOUBLEJUMP] != -1)
    {
    	obj_game._abilities[ABILITIES.DOUBLEJUMP] = 1;
    }
    
    // We are on the ground, reset dash state
    if (obj_game._abilities[ABILITIES.DASH] != -1)
    {
        obj_game._abilities[ABILITIES.DASH] = 1;
    }
    
    if (key_jump)
    {
        _verticalSpeed = _jumpHeight;
    }
}

if (_verticalSpeed < 0 && !gamepad_button_check(0, gp_face1))
{
    _verticalSpeed = max(_verticalSpeed, _jumpHeight / 4);
}

move_vertically();