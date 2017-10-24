/// @description Collision with enemy

if (other._state != ENEMY_STATES.DEAD)
{
    _hitPoints -= other._attackPower;
    _horizontalSpeed = other.image_xscale * 8;
    _verticalSpeed = 0;
    image_index = 1;
    _state = STATES.HIT;

    with (other)
    {
        _horizontalSpeed = image_xscale * -8;
        _state = ENEMY_STATES.HIT;
    }
}