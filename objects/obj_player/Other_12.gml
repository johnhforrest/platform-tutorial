/// @description Dashing state

move_horizontally();

// If there was a collision when dashing, reset dash state
if (_horizontalSpeed == 0)
{
    obj_game._abilities[ABILITIES.DASH] = 0;
}

// State counter
if (obj_game._abilities[ABILITIES.DASH] > 0)
{
    obj_game._abilities[ABILITIES.DASH]--;
}
else
{
    _state = STATES.DEFAULT;
}