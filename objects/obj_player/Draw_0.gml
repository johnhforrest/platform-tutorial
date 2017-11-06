/// @description Draw self

if (_invincibilityFrames == 0 || (_invincibilityFrames % _invincibilityInterval > (_invincibilityInterval / 2)))
{
    if (_state == STATES.SLAM)
    {
        draw_sprite_ext(sprite_index, 0, x, _tempY, _xScale, _yScale, 0, image_blend, image_alpha);
    }
    else
    {
        event_inherited();
    }
}