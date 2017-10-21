// If we are currently in a transition, don't move the player
if (!_hasControl)
{
    return;
}

// Calculate horizontal movement
if (_abilities[ABILITIES.DASH] == 1 && gamepad_button_check_pressed(0, gp_shoulderrb))
{
    _horizontalSpeed = sign(image_xscale) * _walkSpeed * 3;
    _verticalSpeed = 0;
    _abilities[ABILITIES.DASH] = 0;
    alarm[0] = 15;
}
else if (_abilities[ABILITIES.DASH] != 0)
{
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

if (_abilities[ABILITIES.DASH] == 0)
{
    // Don't do any vertical movement while dash is happening
    return;
}

// Calculate vertical movement
var key_jump = gamepad_button_check_pressed(0, gp_face1);

if (_abilities[ABILITIES.DOUBLEJUMP] == 1 && key_jump)
{
	_verticalSpeed = _jumpHeight;
	_abilities[ABILITIES.DOUBLEJUMP] = 0;
}

if (tile_vcollision(_tileMap, 1))
{
    if (_abilities[ABILITIES.DOUBLEJUMP] != -1)
    {
    	_abilities[ABILITIES.DOUBLEJUMP] = 1;
    }
    
    _verticalSpeed = key_jump ? _jumpHeight : 0;
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

y += _verticalSpeed;

// Calculate attack
if (_cooldown == 0)
{
    if (gamepad_button_check_pressed(0, gp_face3))
    {
        instance_create_layer(x + (TILE_SIZE * image_xscale), y, "Player", obj_attack);
        _cooldown = _cooldownReset;
    }
}
else
{
    _cooldown--;
}