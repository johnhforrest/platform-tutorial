/// @description Collision with player

with (other)
{
    _hitPoints -= 10;
    _state = STATES.KNOCKBACK;
}