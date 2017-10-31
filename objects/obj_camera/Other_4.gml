/// @description Getting the camera for the room

_width = camera_get_view_width(view_camera[0]);
_height = camera_get_view_height(view_camera[0]);

if (instance_exists(_target))
{
    x = _target.x;
    y = _target.y;
}

camera_set_view_pos(view_camera[0], x - (_width / 2), y - (_height / 2));