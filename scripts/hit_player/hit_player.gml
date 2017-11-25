/// @description Hit a player with damage

var damage = argument0;
var hKnockbackSpeed = argument1;
var vKnockbackSpeed = argument2;

if (obj_player._invincibilityFrames == 0) {
    with (obj_player) {
		_hitPoints -= damage;
	    _horizontalSpeed = hKnockbackSpeed;
	    _verticalSpeed = vKnockbackSpeed;
	    _timer = false;
        _invincibilityFrames = game_get_speed(gamespeed_fps);
        alarm[0] = _knockbackDuration;
        _state = PLAYER_STATES.KNOCKBACK;
    }
}