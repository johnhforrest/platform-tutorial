/// @function set_sprite_scale Flips the sprite based on movement direction

if (_horizontalSpeed != 0)
{
    image_xscale = sign(_horizontalSpeed);
}

// Unsquashing the sprites if they were squashed from a jump or collision
_xScale = lerp(_xScale, image_xscale, .1);
_yScale = lerp(_yScale, image_yscale, .1);