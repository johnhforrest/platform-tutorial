/// @description Listening for player interaction

if (!instance_exists(obj_player))
{
    return;
}

_playerNearby = is_player_on_ground() && is_player_nearby(TILE_SIZE * 2);
if (_playerNearby && obj_input._verticalSum > 0)
{
    obj_game._targetMarker = 0;
    slide_transition(TRANSITION_MODE.GOTO, room_house1);
}