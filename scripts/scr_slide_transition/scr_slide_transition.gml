/// @desc scr_slide_transition(mode, targetRoom)
/// @arg mode sets transition mode between next, restart, and goto
/// @arg targetRoom sets target room when using the goto mode.

with (obj_transition)
{
    mode = argument[0];
    if (argument_count > 1)
    {
        target = argument[1];
    }
}

// TODO: need to figure out the camera object between room transitions
with (obj_camera)
{
    camera = view_camera[0];
}