/// @description Knockback state

move_horizontally();
move_vertically(0, true);

// Returning to default state
_horizontalSpeed = approach(_horizontalSpeed, 0, _friction);
_verticalSpeed = approach(_verticalSpeed, 0, _friction);

if (alarm[0] <= 0) {
    _horizontalSpeed = 0;
    _verticalSpeed = 0;
    _state = PLAYER_STATES.DEFAULT;
}