/// @description Hit a player with damage

var object = argument0;
var damage = argument1;
var hKnockbackSpeed = argument2;
var vKnockbackSpeed = argument3;

with (object)
{
    _hitPoints -= damage;
    _horizontalSpeed = hKnockbackSpeed;
    _verticalSpeed = vKnockbackSpeed;
    _timer = false;
    _state = STATES.KNOCKBACK
}