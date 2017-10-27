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
    _horizontalSpeed = _walkSpeed * image_xscale;
    _state = ENEMY_STATES.DEFAULT;
}

// Calculating life
if (_hitPoints <= 0)
{
    _horizontalSpeed = 0;
    
    // TODO: No need to have an instance here anymore
    sprite_index = spr_enemy_dead;
    _state = ENEMY_STATES.DEAD;
}