var angle_ = _directionFacing == 0 ? 135 : 45;
_horizontalSpeed = lengthdir_x(-_jumpHeight, angle_);
_verticalSpeed = lengthdir_y(-_jumpHeight, angle_);
image_xscale *= -1;