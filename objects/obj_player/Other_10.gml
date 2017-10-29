/// @description Default state

// Performing both horizontal and vertical movement
move_player();

// Calculate attack
if (_cooldown == 0)
{
    if (gamepad_button_check_pressed(0, gp_face3))
    {
        global.debug_num_attacks++;
        //show_debug_message("num attacks: " + string(global.debug_num_attacks));
        
        with (instance_create_layer(x + (TILE_SIZE * image_xscale), y, "Player", obj_attack))
        {
            _direction = point_direction(other.x, other.y, x, y);
        }
        
        _cooldown = _cooldownReset;
    }
}
else
{
    _cooldown--;
}

// Transition to dash state
if (obj_game._abilities[ABILITIES.DASH] == 1 && gamepad_button_check_pressed(0, gp_shoulderrb))
{
    _horizontalSpeed = sign(image_xscale) * _walkSpeed * 3;
    _verticalSpeed = 0;
    obj_game._abilities[ABILITIES.DASH] = _dashLength;
    _state = STATES.DASHING;
}