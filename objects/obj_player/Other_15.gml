/// @description Slam state

// Returning to default y and sprite scale after being squashed
_tempY = approach(_tempY, y, .05);
_xScale = approach(_xScale, image_xscale, .05);
_yScale = approach(_yScale, image_yscale, .05);
