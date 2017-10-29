/// @description Move to next room

with (obj_player)
{
    if (_state != STATES.FROZEN)
    {
        _state = STATES.FROZEN;
        obj_game._targetRoom = other._targetRoom;
        obj_game._targetMarker = other._targetMarker;
        
        slide_transition(TRANSITION_MODE.GOTO, obj_game._targetRoom);
    }
}