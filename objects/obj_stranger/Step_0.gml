/// @description Listening for player interaction

if (!instance_exists(obj_player))
{
    return;
}

var offSet = TILE_SIZE * 2;
_playerNearby = obj_player._verticalSpeed = 0
    && point_in_rectangle(obj_player.x, obj_player.y, x - offSet, y - offSet, x + offSet, y + offSet);

if (_playerNearby && !_talking && obj_input._verticalSum > 0)
{
    _talking = true;
    obj_player._state = STATES.FROZEN;
}

if (_talking && obj_input._jumpPressed)
{
    _talking = false;
    obj_player._state = STATES.DEFAULT;
}