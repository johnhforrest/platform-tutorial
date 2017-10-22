/// @description Default state

// Calculate horizontal movement
if (tile_hcollision(_tileMap, _horizontalSpeed))
{
    // if we have a collision, snap to the tile grid (i.e., close the remaining distance to the wall but not over)
	x = _horizontalSpeed > 0
		? x - (x % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x)
		: x - (x % TILE_SIZE) - (bbox_left - x);
	
	_horizontalSpeed = -_horizontalSpeed;
}
else if (tilemap_get_at_pixel(_tileMap, (_horizontalSpeed > 0 ? bbox_right : bbox_left) + _horizontalSpeed, bbox_bottom + 1) == 0)
{
    _horizontalSpeed = -_horizontalSpeed;
}

x += _horizontalSpeed;
image_xscale = sign(_horizontalSpeed);

// Calculating life
if (_hitPoints <= 0)
{
	image_index = 1;
    _horizontalSpeed = 0;
    _state = ENEMY_STATES.DEAD;
}