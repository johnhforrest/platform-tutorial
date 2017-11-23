/// @description Run enemy state

if (!instance_exists(obj_player))
{
    return;
}

// Calculating life
if (_hitPoints <= 0)
{
    _horizontalSpeed = 0;

    sprite_index = spr_enemy_dead;
    _state = ENEMY_STATES.DEAD;
}

event_user(_state);