if (_invincibilityFrames == 0 || (_invincibilityFrames % _invincibilityInterval > (_invincibilityInterval / 2))) {
    draw_sprite_ext(sprite_index, image_index, x, y, _xScale, _yScale, 0, image_blend, image_alpha);
}