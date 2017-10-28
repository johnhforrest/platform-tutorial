/// @description Knockback state

move_horizontally(0);

// TODO: Consider removing this
// Returning to default state
_horizontalSpeed = lerp(_horizontalSpeed, 0, .1);
if (abs(_horizontalSpeed) < 1)
{
    image_index = 0;
    _invincibilityFrames = 0;
    _state = STATES.DEFAULT;
}

if (_invincibilityFrames > 0)
{
    _invincibilityFrames--;
}

// Calculating life
if (_hitPoints <= 0)
{
	slide_transition(TRANSITION_MODE.RESTART);
}