/// @description Default state

move_horizontally(-1, true);

if (_horizontalSpeed != 0)
{
    image_xscale = sign(_horizontalSpeed);
}

set_is_on_ground();
move_vertically();