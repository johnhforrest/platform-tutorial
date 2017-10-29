/// @description Run player state

if (_invincibilityFrames > 0)
{
    _invincibilityFrames--;
}

event_user(_state);