/// @description Menu selection and actions

if (obj_input._verticalSum < 0 && _optionsIndex < (_numOptions - 1))
{
    _optionsIndex++;
}
else if (obj_input._verticalSum > 0 && _optionsIndex > 0)
{
    _optionsIndex--;
}

// Calculating actions
if (obj_input._jumpPressed)
{
    switch (_optionsIndex)
    {
        case 0:
            obj_game._state = PAUSE_STATES.UNPAUSED;
            break;
        
        case 1:
            game_end();
            break;
    }
}
else if (obj_input._cancelPressed)
{
    obj_game._state = PAUSE_STATES.UNPAUSED;
}