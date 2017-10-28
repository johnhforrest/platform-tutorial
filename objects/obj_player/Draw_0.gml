/// @description Draw self

if (_invincibilityFrames == 0 || (_invincibilityFrames % _invincibilityInterval > (_invincibilityInterval / 2)))
{
    draw_self();
}