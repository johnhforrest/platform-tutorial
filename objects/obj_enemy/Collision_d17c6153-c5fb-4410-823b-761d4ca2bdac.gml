/// @description Collision with weapon

if (!other._hitEnemy)
{
    other._hitEnemy = true;
    
    if (direction < 90 || direction > 270)
    {
        _horizontalSpeed = 8;
    }
    else
    {
        _horizontalSpeed = -8;
    }
    
    with (obj_player)
    {
        _horizontalSpeed = sign(other._horizontalSpeed) * -4;
        _verticalSpeed = 0;
        _state = STATES.HIT;
    }

    _hitPoints -= obj_player._attackPower;
    _state = ENEMY_STATES.HIT;
}