/// @description Collision with enemy

if (_invincibilityFrames == 0 && other._state != STATES.DEAD)
{
    with (other)
    {
        var dir = point_direction(other.x, other.y, x, y);
        var hKnockback = floor(lengthdir_x(_knockbackAmount, dir));
        var vKnockback = floor(lengthdir_y(_knockbackAmount, dir));
        
        hit_player(_attackPower, -hKnockback, -vKnockback);
        _horizontalSpeed = hKnockback;
        _veritcalSpeed = vKnockback;
        _state = STATES.KNOCKBACK;
    }
}