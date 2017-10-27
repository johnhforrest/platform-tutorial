/// @description Listening for pause action

if (gamepad_button_check_pressed(0, gp_start))
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