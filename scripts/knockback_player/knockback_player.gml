/// @description Knockback the player
/// @arg hknockbackSpeed The horizontal knockback speed
/// @arg vknockbackSpeed The vertical knockback speed

var hKnockbackSpeed = argument0;
var vKnockbackSpeed = argument1;

with (obj_player) {
	_horizontalSpeed = hKnockbackSpeed;
	_verticalSpeed = vKnockbackSpeed;
	_timer = false;
}