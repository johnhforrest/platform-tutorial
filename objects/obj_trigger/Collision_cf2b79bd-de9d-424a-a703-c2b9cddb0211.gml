/// @description Move to next room

if (obj_player._state != PLAYER_STATES.FROZEN)
{
    obj_player._state = PLAYER_STATES.FROZEN;
    obj_game._targetMarker = _targetMarker;
        
    slide_transition(TRANSITION_MODE.GOTO, _targetRoom);
}