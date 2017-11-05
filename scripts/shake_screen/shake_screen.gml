/// @function shake_screen(magnitude, length)
/// @param {number} magnitude The initial magnitude of the shake
/// @param {number} length The length of the shake in frames

var magnitude = argument0;
var length = argument1;

if (instance_exists(obj_camera))
{
    with (obj_camera)
    {
        _shakeLength = length;
        _shakeMagnitude = magnitude;
        _shakeRemaining = magnitude;
    }
}