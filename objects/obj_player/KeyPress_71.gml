/// @description Go to next room

if (room == room_two)
{
    scr_slide_transition(TRANSITION_MODE.GOTO, room_one);
}
else
{
    scr_slide_transition(TRANSITION_MODE.GOTO, room_two);
}