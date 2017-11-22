/// @description Knockback state

// Returning to default state
_horizontalSpeed = lerp(_horizontalSpeed, 0, .1);
_verticalSpeed = lerp(_verticalSpeed, 0, .1);

move_horizontally();
move_vertically();