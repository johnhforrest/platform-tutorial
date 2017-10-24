/// @description Replace self with player. Using the step event so instance creation code runs first

if (room == global._targetRoom && global._targetMarker == _markerIndex && instance_exists(obj_player))
{
    with (obj_player)
    {
        x = other.x;
        y = other.y;
        
        // Snap player to the grid
        y = y - (y % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);
    }
}

instance_destroy();