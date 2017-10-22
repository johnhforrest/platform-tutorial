/// @description Go to next room

if (room == room_two)
{
    slide_transition(TRANSITION_MODE.GOTO, room_one);
}
else
{
    slide_transition(TRANSITION_MODE.GOTO, room_two);
}