/// @function snap_to_vgrid Snaps the object to the grid
/// @param snapDown {boolean} Direction of the snap (true for down, false for up)

var snapDown = argument0;

if (snapDown)
{
    y = y - (y % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);
}
else
{
    y = y - (y % TILE_SIZE) - (bbox_top - y);
}