/// @description Collision with weapon

if (_state != STATES.DEAD && !ds_map_exists(other._enemiesHit, id))
{
    ds_map_add(other._enemiesHit, id, true);
    
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