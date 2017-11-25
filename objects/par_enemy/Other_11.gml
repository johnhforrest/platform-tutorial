/// @description Knockback state

move_horizontally();
move_vertically();

// Returning to default state
_horizontalSpeed = approach(_horizontalSpeed, 0, _friction);
_verticalSpeed = approach(_verticalSpeed, 0, _friction);

if (_horizontalSpeed  == 0 && _verticalSpeed == 0)
{
	_horizontalSpeed = _walkSpeed * image_xscale;
	_state = ENEMY_STATES.DEFAULT;
}