/// @description Menu selection and actions

// Calculating menu movement (i.e., up and down)
var key_up = 0;
var key_down = 0;

if (abs(gamepad_axis_value(0, gp_axislv)) > 0.4)
{
    key_up = abs(min(gamepad_axis_value(0, gp_axislv), 0));
    key_down = max(gamepad_axis_value(0, gp_axislv), 0);
}

var optionDirection = key_up - key_down;

if (optionDirection < 0 && _optionsIndex < (_numOptions - 1))
{
    _optionsIndex++;
}
else if (optionDirection > 0 && _optionsIndex > 0)
{
    _optionsIndex--;
}

// Calculating actions
if (gamepad_button_check_pressed(0, gp_face1))
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
else if (gamepad_button_check_pressed(0, gp_face2))
{
    obj_game._state = PAUSE_STATES.UNPAUSED;
}