/// @description Resets gravity timer and vertical speed if the object is on the ground
/// @returns {boolean} Whether or not the object is on the ground

var canSlam = argument_count > 0 ? argument[0] : false;

if (tilemap_get_at_pixel(_tileMap, bbox_left, bbox_bottom + 1) != 0 || tilemap_get_at_pixel(_tileMap, bbox_right, bbox_bottom + 1) != 0)
{
	if (canSlam) {
		animate_vertical_collision();
	}

    _verticalSpeed = 0;
    _timer = false;
    
    return true;
}

return false;