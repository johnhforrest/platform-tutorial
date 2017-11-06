/// @description Hit a player with damage

var damage = argument0;
var hKnockbackSpeed = argument1;
var vKnockbackSpeed = argument2;

if (obj_player._invincibilityFrames == 0)
{
    hit_character(obj_player, damage, hKnockbackSpeed, vKnockbackSpeed);
    with (obj_player)
    {
        _invincibilityFrames = game_get_speed(gamespeed_fps);
    }
}