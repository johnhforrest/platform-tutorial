/// @description Following the player

if (!instance_exists(_target))
{
    return;
}

var newX = lerp(x, _target.x, 0.1);
newX = clamp(newX, (_width / 2) + TILE_SIZE, room_width - (_width / 2) - TILE_SIZE);

var newY = lerp(y, _target.y, 0.1);
newY = clamp(newY, (_height / 2) + TILE_SIZE, room_height - (_height / 2) - TILE_SIZE);

if (point_distance(x, y, newX, newY) > 0.5)
{
    x = newX;
    y = newY;
}

if (_shakeRemaining > 0)
{
    x += random_range(-_shakeRemaining, _shakeRemaining);
    y += random_range(-_shakeRemaining, _shakeRemaining);
    
    // Shaking will get softer over time until it reaches 0
    _shakeRemaining = max(0, _shakeRemaining - ((1 / _shakeLength) * _shakeMagnitude));
}

camera_set_view_pos(view_camera[0], x - (_width / 2), y - (_height / 2));