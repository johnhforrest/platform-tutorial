/// @description Updating the camera

// Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update camera position
// Each frame we move 1/25 of the distance to have a smoother animation
x += ceil((xTo - x) / 25);
y += ceil((yTo - y) / 25);

x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

// Update camera view
camera_set_view_pos(camera, x - viewWidthHalf, y - viewHeightHalf);