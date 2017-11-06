/// @description Slam state

// Returning to default y and sprite scale after being squashed
_tempY = lerp(_tempY, y, .05);
_xScale = lerp(_xScale, image_xscale, .05);
_yScale = lerp(_yScale, image_yscale, .05);
