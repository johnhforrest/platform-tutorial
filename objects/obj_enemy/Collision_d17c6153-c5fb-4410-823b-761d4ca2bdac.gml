/// @description Collision with weapon

if (!other._hitEnemy)
{
    other._hitEnemy = true;
    
    var hKnockback = floor(lengthdir_x(8, other._direction));
    var vKnockback = floor(lengthdir_y(8, other._direction));
    hit_character(self, obj_player._attackPower, hKnockback, vKnockback);
    
    with (obj_player)
    {
        _horizontalSpeed = -hKnockback / 2;
        _verticalSpeed = 0;
        _state = STATES.KNOCKBACK;
    }

    _state = STATES.KNOCKBACK;
}