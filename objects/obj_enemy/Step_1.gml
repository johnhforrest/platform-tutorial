/// @description Detecting life

// Calculating life
if (_hitPoints <= 0)
{
    _horizontalSpeed = 0;

    sprite_index = spr_enemy_dead;
    _state = STATES.DEAD;
}
