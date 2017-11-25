if (_invincibilityFrames == 0 && other._state != ENEMY_STATES.DEAD) {
    with (other) {
        var dir = point_direction(x, y, other.x, other.y);
        var hKnockback = floor(lengthdir_x(_knockbackAmount, dir));
        var vKnockback = floor(lengthdir_y(_knockbackAmount, dir));
        
        hit_player(_attackPower, hKnockback, vKnockback);
    }
}