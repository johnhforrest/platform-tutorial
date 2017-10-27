// Horizontal movement
var key_left = 0;
var key_right = 0;

if (abs(gamepad_axis_value(0, gp_axislh)) > 0.4)
{
    key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
    key_right = max(gamepad_axis_value(0, gp_axislh), 0);
}
    
_horizontalSpeed = round((key_right - key_left) * _walkSpeed);
    
if (_horizontalSpeed != 0)
{
    image_xscale = sign(_horizontalSpeed);
}
    
if (tile_hcollision(_tileMap, _horizontalSpeed))
{
	// if we have a collision, snap to the tile grid (i.e., close the remaining distance to the wall but not over)
	x = _horizontalSpeed > 0
		? x - (x % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x)
		: x - (x % TILE_SIZE) - (bbox_left - x);
	
	_horizontalSpeed = 0;
}

x += _horizontalSpeed;

// Vertical movement
var key_jump = gamepad_button_check_pressed(0, gp_face1);

if (obj_game._abilities[ABILITIES.DOUBLEJUMP] == 1 && key_jump)
{
	_verticalSpeed = _jumpHeight;
	obj_game._abilities[ABILITIES.DOUBLEJUMP] = 0;
}

if (tile_vcollision(_tileMap, 1))
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
    
    _verticalSpeed = key_jump ? _jumpHeight : 0;
    _timer = false;
}

if (_verticalSpeed < 0 && !gamepad_button_check(0, gp_face1))
{
    _verticalSpeed = max(_verticalSpeed, _jumpHeight / 4);
}

if (_timer)
{
    // NOTE: This only works with 0.5 gravity right now (makes it non-fractional)
    _verticalSpeed += _selfGravity * 2;
    _timer = false;
}
else
{
    _timer = true;
}

if (tile_vcollision(_tileMap, _verticalSpeed))
{
    // if we have a collision, snap to the tile grid (i.e., close the remaining distance to the wall but not over)
    y = _verticalSpeed > 0
    	? y - (y % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y)
    	: y - (y % TILE_SIZE) - (bbox_top - y);
	
    _verticalSpeed = 0;
    _timer = false;
}

y += _verticalSpeed;