/// @description Hit state

// Horizontal movement
move_horizontally();
move_vertically();

// Returning to default state
_horizontalSpeed = lerp(_horizontalSpeed, 0, .1);
_verticalSpeed = lerp(_verticalSpeed, 0, .1);
if (point_distance(_horizontalSpeed, _verticalSpeed, 0, 0) < 1)
{
    _horizontalSpeed = _walkSpeed * image_xscale;
    _state = STATES.DEFAULT;
}