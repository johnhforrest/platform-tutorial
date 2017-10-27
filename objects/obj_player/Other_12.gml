/// @description Dashing state

// Horizontal movement
if (tile_hcollision(_tileMap, _horizontalSpeed))
{
	// if we have a collision, snap to the tile grid (i.e., close the remaining distance to the wall but not over)
	x = _horizontalSpeed > 0
		? x - (x % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x)
		: x - (x % TILE_SIZE) - (bbox_left - x);
	
	_horizontalSpeed = 0;
    obj_game._abilities[ABILITIES.DASH] = 0;
}

x += _horizontalSpeed;

// State counter
if (obj_game._abilities[ABILITIES.DASH] > 0)
{
    obj_game._abilities[ABILITIES.DASH]--;
}
else
{
    _state = STATES.DEFAULT;
}