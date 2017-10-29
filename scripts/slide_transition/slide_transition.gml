/// @desc scr_slide_transition(mode, targetRoom)
/// @arg mode sets transition mode between next, restart, and goto
/// @arg targetRoom sets target room when using the goto mode.

with (obj_transition)
{
    _mode = argument[0];
    if (argument_count > 1)
    {
        _target = argument[1];
    }
}