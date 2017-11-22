/// @description Collision with weapon

if (_state != STATES.DEAD && !ds_map_exists(other._enemiesHit, id))
{
    ds_map_add(other._enemiesHit, id, true);
    
    var hKnockback = floor(lengthdir_x(8, other._direction));
    var vKnockback = 0;
    
    //if (other._direction == 90 || other._direction == 270)
    //{
    //    vKnockback = floor(lengthdir_y(8, other._direction));
    //}
    
    hit_character(self, obj_player._attackPower, hKnockback, vKnockback);
    
    with (obj_player)
    {
        //_horizontalSpeed = -hKnockback / 2;
        //_verticalSpeed = -vKnockback * 2;
        
        //alarm[0] = floor(game_get_speed(gamespeed_fps) / 6);
        //_state = STATES.KNOCKBACK;
    }

    //effect_create_above(ef_flare, bbox_left, y, 3, c_white);
    //_state = STATES.KNOCKBACK;
}