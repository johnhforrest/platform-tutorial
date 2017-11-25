/// @description Slam state

// Returning to default y and sprite scale after being squashed
y = lerp(y, _prevY, .05);
_xScale = lerp(_xScale, image_xscale, .05);
_yScale = lerp(_yScale, image_yscale, .05);

if (alarm[1] <= 0) {
    y = _prevY;
    _state = PLAYER_STATES.DEFAULT;
}