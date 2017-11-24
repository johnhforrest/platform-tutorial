/// @description Knockback state

move_horizontally();
move_vertically(0, true);

// Returning to default state
_horizontalSpeed = approach(_horizontalSpeed, 0, .1);
_verticalSpeed = approach(_verticalSpeed, 0, .1);