/// @description Move to next room

with (obj_player)
{
    if (hasControl)
    {
        hasControl = false;
        scr_slide_transition(TRANSITION_MODE.NEXT);
    }
}