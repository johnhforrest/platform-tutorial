if (_invincibilityFrames == 0 || (_invincibilityFrames % _invincibilityInterval > (_invincibilityInterval / 2)))
{
    // TODO: move this into the slam user event
    if (_state == PLAYER_STATES.SLAM)
    {
        draw_sprite_ext(sprite_index, image_index, x, _tempY, _xScale, _yScale, 0, image_blend, image_alpha);
    }
    else
    {
        draw_sprite_ext(sprite_index, image_index, x, y, _xScale, _yScale, 0, image_blend, image_alpha);
    }
}