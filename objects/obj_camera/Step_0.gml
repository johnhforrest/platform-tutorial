/// @description Following the player

if (!instance_exists(_target))
{
    return;
}

var newX = lerp(x, _target.x, 0.1);
newX = clamp(newX, _width / 2, room_width - (_width / 2));

var newY = lerp(y, _target.y, 0.1);
newY = clamp(newY, _height / 2, room_height - (_height / 2));

if (point_distance(x, y, newX, newY) > 0.5)
{
    x = newX;
    y = newY;
    camera_set_view_pos(view_camera[0], x - (_width / 2), y - (_height / 2));
}