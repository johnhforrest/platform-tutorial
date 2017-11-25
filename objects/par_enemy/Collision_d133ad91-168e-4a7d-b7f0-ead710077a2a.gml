/// @description Collision with weapon

if (_state != ENEMY_STATES.DEAD && !ds_map_exists(other._enemiesHit, id))
{
    ds_map_add(other._enemiesHit, id, true);
    
    var knockbackDirection = point_direction(obj_player.x, obj_player.y, x, y);
    var hKnockback = lengthdir_x(obj_player._knockbackAmount, knockbackDirection);
    var vKnockback = lengthdir_y(obj_player._knockbackAmount, knockbackDirection);
    
    hit_character(self, obj_player._attackPower, hKnockback, vKnockback);
    knockback_player(-hKnockback / 2, -vKnockback * 2);
}