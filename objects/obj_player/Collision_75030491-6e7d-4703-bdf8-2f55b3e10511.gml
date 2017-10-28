/// @description Collision with enemy

if (_invincibilityFrames == 0 && other._state != ENEMY_STATES.DEAD)
{
    with (other)
    {
        var hKnockback = 8;
        hit_player(_attackPower, image_xscale * hKnockback, 0);
        _horizontalSpeed = image_xscale * -hKnockback;
        _state = ENEMY_STATES.HIT;
    }
}