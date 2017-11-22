/// @description Hit a player with damage

var object = argument0;
var damage = argument1;
var hKnockbackSpeed = argument2;
var vKnockbackSpeed = argument3;

with (object)
{
    _hitPoints -= damage;
    //_horizontalSpeed = hKnockbackSpeed;
    //_verticalSpeed = vKnockbackSpeed;
    //_timer = false;
    
    //alarm[0] = floor(game_get_speed(gamespeed_fps) / 3);
    //_state = STATES.KNOCKBACK
}