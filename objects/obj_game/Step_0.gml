/// @description Listening for pause action

if (obj_input._startPressed)
{
    if (_previousState == PAUSE_STATES.UNPAUSED)
    {
        _state = PAUSE_STATES.PAUSED;
    }
    else
    {
        _state = PAUSE_STATES.UNPAUSED;
    }
}

event_user(_state);