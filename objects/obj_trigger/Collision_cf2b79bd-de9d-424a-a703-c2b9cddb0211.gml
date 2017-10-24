/// @description Move to next room

with (obj_player)
{
    if (_state != STATES.FROZEN)
    {
        _state = STATES.FROZEN;
        global._targetRoom = other._targetRoom;
        global._targetMarker = other._targetMarker;
        
        slide_transition(TRANSITION_MODE.GOTO, global._targetRoom);
    }
}