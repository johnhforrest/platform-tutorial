/// @description Getting the camera for the room

_width = camera_get_view_width(view_camera[0]);
_height = camera_get_view_height(view_camera[0]);

if (instance_exists(_target))
{
    x = _target.x;
    y = _target.y;
}