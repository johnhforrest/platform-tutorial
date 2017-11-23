/// @description Frozen state

if (point_distance(x, y, obj_player.x, obj_player.y) <= _aggroRadius)
{
    _state = PLAYER_STATES.DEFAULT;
}
