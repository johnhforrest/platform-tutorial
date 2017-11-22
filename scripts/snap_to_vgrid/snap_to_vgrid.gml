/// @function snap_to_vgrid Snaps the object to the grid
/// @param snapDown {boolean} Direction of the snap (true for down, false for up)

var snapDown = argument0;

if (snapDown)
{
    y = bbox_bottom - (bbox_bottom % TILE_SIZE) + (TILE_SIZE - 1);
    y -= bbox_bottom - y;
}
else
{
    y = bbox_top - (bbox_top % TILE_SIZE);
    y -= bbox_top - y;
}