/// @description Replace self with player if it's the selected marker

if (obj_game._targetMarker == _markerIndex && instance_exists(obj_player))
{
    with (obj_player)
    {
        x = other.x;
        y = other.y;
        snap_to_vgrid(true);
    }
}

instance_destroy();