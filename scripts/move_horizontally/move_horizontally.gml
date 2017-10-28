/// @description Move the object horizontally
/// @arg collisionMultiplier A value that the horizontal speed gets multiplied by after a collision has occurred

var collisionMultiplier = argument_count > 0 ? argument[0] : 0;
var preferGround = argument_count > 1 ? argument[1] : false;

// Horizontal movement
if (tile_hcollision(_tileMap, _horizontalSpeed))
{
    // if we have a collision, snap to the tile grid (i.e., close the remaining distance to the wall but not over)
	x = _horizontalSpeed > 0
		? x - (x % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x)
		: x - (x % TILE_SIZE) - (bbox_left - x);
	
	_horizontalSpeed *= collisionMultiplier;
}
else if (preferGround)
{
    var stuck = false;
    if (_horizontalSpeed > 0
        && (tilemap_get_at_pixel(_tileMap, bbox_right + TILE_SIZE, bbox_bottom + 1) == 0)
        && ((tilemap_get_at_pixel(_tileMap, bbox_left - TILE_SIZE, bbox_bottom + 1) == 0)
            || tile_hcollision(_tileMap, -TILE_SIZE)))
    {
        stuck = true;
    }
    else if (_horizontalSpeed < 0
        && (tilemap_get_at_pixel(_tileMap, bbox_left + TILE_SIZE, bbox_bottom + 1) == 0)
        && ((tilemap_get_at_pixel(_tileMap, bbox_right - TILE_SIZE, bbox_bottom + 1) == 0)
            || tile_hcollision(_tileMap, TILE_SIZE)))
    {
        stuck = true;
    }
    
    if (!stuck && tilemap_get_at_pixel(_tileMap, (_horizontalSpeed > 0 ? bbox_right : bbox_left) + _horizontalSpeed, bbox_bottom + 1) == 0)
    {
        _horizontalSpeed = -_horizontalSpeed;
    }
}

x += _horizontalSpeed;