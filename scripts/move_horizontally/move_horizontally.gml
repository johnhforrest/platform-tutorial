/// @description Move the object horizontally
/// @arg collisionMultiplier A value that the horizontal speed gets multiplied by after a collision has occurred
/// @arg preferGround A value that indicates whether or not the object prefers to stay on the current platform

var collisionMultiplier = argument_count > 0 ? argument[0] : 0;
var preferGround = argument_count > 1 ? argument[1] : false;

// Horizontal movement
if (tile_hcollision(_tileMap, _horizontalSpeed))
{
	snap_to_hgrid(_horizontalSpeed > 0);
	
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
        // Moving to the right AND there's no ground tile in front
        // AND there's no ground tile behind or there's a wall tile behind
        stuck = true;
    }
    else if (_horizontalSpeed < 0
        && (tilemap_get_at_pixel(_tileMap, bbox_left - TILE_SIZE, bbox_bottom + 1) == 0)
        && ((tilemap_get_at_pixel(_tileMap, bbox_right + TILE_SIZE, bbox_bottom + 1) == 0)
            || tile_hcollision(_tileMap, TILE_SIZE)))
    {
        // Moving to the left AND there's no ground tile in front
        // AND there's no ground tile behind or there's a wall tile behind
        stuck = true;
    }

    // If we're not stuck and we are about to collide with a wall, turn around
    if (!stuck && tilemap_get_at_pixel(_tileMap, (_horizontalSpeed > 0 ? bbox_right : bbox_left) + _horizontalSpeed, bbox_bottom + 1) == 0)
    {
        _horizontalSpeed = -_horizontalSpeed;
    }
}

x += round(_horizontalSpeed);