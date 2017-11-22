/// @description Knockback state

move_horizontally();
move_vertically();

// Returning to default state
_horizontalSpeed = lerp(_horizontalSpeed, 0, .1);
_verticalSpeed = lerp(_verticalSpeed, 0, .1);