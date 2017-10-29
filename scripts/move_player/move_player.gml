// Horizontal movement
_horizontalSpeed = obj_input._horizontalSum * _walkSpeed;
   
move_horizontally();

if (_horizontalSpeed != 0)
{
    image_xscale = sign(_horizontalSpeed);
}

// Vertical movement
var key_jump = obj_input._jumpPressed;

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

if (_verticalSpeed < 0 && !obj_input._jumpHeld)
{
    _verticalSpeed = max(_verticalSpeed, _jumpHeight / 4);
}

move_vertically();