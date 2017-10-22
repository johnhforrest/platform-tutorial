/// @description Move to next room

with (obj_player)
{
    if (_state != STATES.FROZEN)
    {
        _state = STATES.FROZEN;
        slide_transition(TRANSITION_MODE.NEXT);
    }
}