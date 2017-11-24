/// @description Knockback state

move_horizontally();
move_vertically();

// Returning to default state
_horizontalSpeed = lerp(_horizontalSpeed, 0, _friction);
_verticalSpeed = lerp(_verticalSpeed, 0, _friction);

if (_horizontalSpeed  == 0 && _verticalSpeed == 0)
{
	_state = ENEMY_STATES.DEFAULT;
}