/// @description Following the player

if (!instance_exists(_target))
{
    return;
}

x = lerp(x, _target.x, 0.1);
x = clamp(x, _width / 2, room_width - (_width / 2));

y = lerp(y, _target.y, 0.1);
y = clamp(y, _height / 2, room_height - (_height / 2));

camera_set_view_pos(view_camera[0], x - (_width / 2), y - (_height / 2));