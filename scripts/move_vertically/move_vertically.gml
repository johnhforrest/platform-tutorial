/// @description Move the object vertically
/// @arg collisionMultiplier A value that the vertical speed gets multiplied by after a collision has occurred
/// @arg canSlam A value that indicates whether the object will slam on the ground after a certain speed

var collisionMultiplier = argument_count > 0 ? argument[0] : 0;
var canSlam = argument_count > 1 ? argument[1] : false;

if (_timer)
{
    // NOTE: This only works with 0.5 gravity right now (makes it non-fractional)
    _verticalSpeed += _selfGravity * 2;
    _timer = false;
}
else
{
    _timer = true;
}

y += _verticalSpeed;

if (_verticalSpeed > 0
    && (tilemap_get_at_pixel(_tileMap, bbox_left, bbox_bottom) != 0 || tilemap_get_at_pixel(_tileMap, bbox_right, bbox_bottom) != 0)) {
    snap_to_vgrid(true);
    
	if (canSlam) {
		animate_vertical_collision();
	}
	
    _verticalSpeed *= collisionMultiplier;
    _timer = false;
} 
else if (tilemap_get_at_pixel(_tileMap, bbox_left, bbox_top) != 0 || tilemap_get_at_pixel(_tileMap, bbox_right, bbox_top) != 0) {
    snap_to_vgrid(false);
    	
    _verticalSpeed *= collisionMultiplier;
    _timer = false;
}