/// @description Default state

move_horizontally();

if (obj_player.x + TILE_SIZE < x)
{
    sprite_index = spr_enemy2_left;
    
    if (_horizontalSpeed > 0)
    {
        _horizontalSpeed *= -1;
    }
}
else if (obj_player.x - TILE_SIZE > x)
{
    sprite_index = spr_enemy2;
    
    if (_horizontalSpeed < 0)
    {
        _horizontalSpeed *= -1;
    }
}

if (set_is_on_ground())
{
    _verticalSpeed = _bounceHeight;
}

move_vertically();

if (point_distance(x, y, obj_player.x, obj_player.y) > _aggroRadius)
{
    _state = STATES.FROZEN;
}