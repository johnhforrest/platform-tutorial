/// @description Collision with weapon

if (_state != ENEMY_STATES.DEAD && !ds_map_exists(other._enemiesHit, id)) {
    with (other) {
        ds_map_add(_enemiesHit, other.id, true);
    
        var knockbackDirection = point_direction(x, y, other.x, other.y);
        var hKnockback = lengthdir_x(_knockbackAmount, knockbackDirection);
        var vKnockback = lengthdir_y(_knockbackAmount, knockbackDirection);
    
        hit_character(other, _attackPower, hKnockback, vKnockback);
        knockback_player(-hKnockback / 2, -vKnockback * 2);
    }
}