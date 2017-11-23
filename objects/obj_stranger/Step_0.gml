/// @description Listening for player interaction

if (!instance_exists(obj_player))
{
    return;
}

_playerNearby = is_player_on_ground() && is_player_nearby(TILE_SIZE * 2);
if (_playerNearby && !_talking && obj_input._verticalSum > 0)
{
    _talking = true;
    obj_player._state = PLAYER_STATES.FROZEN;
}

if (_talking && obj_input._jumpPressed)
{
    _talking = false;
    obj_player._state = PLAYER_STATES.DEFAULT;
}