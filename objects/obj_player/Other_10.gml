/// @description Default state

// Calculate attack
if (_cooldown == 0)
{
    if (gamepad_button_check_pressed(0, gp_face3))
    {
        with (instance_create_layer(x + (TILE_SIZE * image_xscale), y, "Player", obj_attack))
        {
            direction = point_direction(x, y, x + other.image_xscale, y);
        }
        
        _cooldown = _cooldownReset;
    }
}
else
{
    _cooldown--;
}

// Performing both horizontal and vertical movement
player_move();

// Transition to dash state
if (_abilities[ABILITIES.DASH] == 1 && gamepad_button_check_pressed(0, gp_shoulderrb))
{
    _horizontalSpeed = sign(image_xscale) * _walkSpeed * 3;
    _verticalSpeed = 0;
    _abilities[ABILITIES.DASH] = _dashLength;
    _state = STATES.DASHING;
}