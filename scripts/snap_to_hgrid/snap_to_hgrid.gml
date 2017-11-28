/// @function snap_to_hgrid Snaps the object to the grid
/// @param snapLeft {boolean} Direction of the snap (true for right, false for left)

var snapRight = argument0;

if (snapRight)
{
    x = bbox_right & ~(TILE_SIZE - 1);
    x -= bbox_right - x + 1;
}
else
{
    x = bbox_left & ~(TILE_SIZE - 1);
    x += TILE_SIZE + x - bbox_left;
}