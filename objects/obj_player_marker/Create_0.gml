/// @description Replace self with player

if (instance_exists(obj_player))
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