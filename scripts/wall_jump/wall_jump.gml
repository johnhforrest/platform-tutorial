var angle_ = _directionFacing == DIRECTION.RIGHT ? 110 : 70;
_horizontalSpeed = lengthdir_x(-_jumpHeight * 1.5, angle_);
_verticalSpeed = lengthdir_y(-_jumpHeight, angle_);
image_xscale *= -1;