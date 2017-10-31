/// @description Detecting life

// Calculating life
if (_hitPoints <= 0)
{
    instance_destroy();
	slide_transition(TRANSITION_MODE.RESTART);
}

if (_invincibilityFrames > 0)
{
    _invincibilityFrames--;
}