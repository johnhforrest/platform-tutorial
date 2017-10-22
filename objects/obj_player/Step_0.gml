event_user(_state);
return;

// Calculate attack
if (_cooldown == 0)
{
    if (gamepad_button_check_pressed(0, gp_face3))
    {
        instance_create_layer(x + (TILE_SIZE * image_xscale), y, "Player", obj_attack);
        _cooldown = _cooldownReset;
    }
}
else
{
    _cooldown--;
}