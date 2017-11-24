/// @description Resets gravity timer and vertical speed if the object is on the ground
/// @returns {boolean} Whether or not the object is on the ground

var canSlam = argument_count > 0 ? argument[0] : false;

if (tile_vcollision(_tileMap, 1))
{
    snap_to_vgrid(true);
	
	if (canSlam) {
		animate_vertical_collision();
	}

    _verticalSpeed = 0;
    _timer = false;
    
    return true;
}

return false;