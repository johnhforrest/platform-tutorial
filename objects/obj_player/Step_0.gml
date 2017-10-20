// If we are currently in a transition, don't move the player
if (!_hasControl)
{
    return;
}

// Get player input
var key_jump = gamepad_button_check_pressed(0, gp_face1);
var key_left = 0;
var key_right = 0;

if (abs(gamepad_axis_value(0, gp_axislh)) > 0.4)
{
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
}

// Calculate horizontal movement
var move = key_right - key_left;
_horizontalSpeed = round(move * _walkSpeed);

if (tile_hcollision(_tileMap, _horizontalSpeed))
{
	// if we have a collision, snap to the tile grid (i.e., close the remaining distance to the wall but not over)
	x = _horizontalSpeed > 0
		? x - (x % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x)
		: x - (x % TILE_SIZE) - (bbox_left - x);
	
	_horizontalSpeed = 0;
}

// Calculate vertical movement
if ( _doubleJumpAvailable && key_jump)
{
	_verticalSpeed = _jumpHeight;
	_doubleJumpAvailable = false;
}

if (tile_vcollision(_tileMap, 1))
{
    if (key_jump)
    {
    	_verticalSpeed = _jumpHeight;
    	_doubleJumpAvailable = true;
    }
    else
    {
        _verticalSpeed = 0;
    }
    
    _timer = false;
}
else
{
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
}

x += _horizontalSpeed;
y += _verticalSpeed;