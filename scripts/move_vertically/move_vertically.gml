/// @description Move the object vertically
/// @arg collisionMultiplier A value that the vertical speed gets multiplied by after a collision has occurred

var collisionMultiplier = argument_count > 0 ? argument[0] : 0;

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
	
    _verticalSpeed *= collisionMultiplier;
    _timer = false;
}

y += _verticalSpeed;