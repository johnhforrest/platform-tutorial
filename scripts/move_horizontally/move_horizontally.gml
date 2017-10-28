/// @description Move the object horizontally
/// @arg collisionMultiplier A value that the horizontal speed gets multiplied by after a collision has occurred

var collisionMultiplier = argument0;

// Horizontal movement
if (tile_hcollision(_tileMap, _horizontalSpeed))
{
    // if we have a collision, snap to the tile grid (i.e., close the remaining distance to the wall but not over)
	x = _horizontalSpeed > 0
		? x - (x % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x)
		: x - (x % TILE_SIZE) - (bbox_left - x);
	
	_horizontalSpeed *= collisionMultiplier;
}

x += _horizontalSpeed;