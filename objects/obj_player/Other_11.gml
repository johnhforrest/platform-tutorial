/// @description Hit state

// Horizontal movement
if (tile_hcollision(_tileMap, _horizontalSpeed))
{
    // if we have a collision, snap to the tile grid (i.e., close the remaining distance to the wall but not over)
	x = _horizontalSpeed > 0
		? x - (x % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x)
		: x - (x % TILE_SIZE) - (bbox_left - x);
	
	_horizontalSpeed = -_horizontalSpeed;
}

x += _horizontalSpeed;

// Returning to default state
_horizontalSpeed = lerp(_horizontalSpeed, 0, .1);
if (abs(_horizontalSpeed) < 1)
{
    image_index = 0;
    _state = STATES.DEFAULT;
}

// Calculating life
if (_hitPoints <= 0)
{
	slide_transition(TRANSITION_MODE.RESTART);
}