/// @description Running event state

// Calculating life
if (_hitPoints <= 0) {
    instance_destroy();
	slide_transition(TRANSITION_MODE.RESTART);
}

if (_invincibilityFrames > 0) {
    _invincibilityFrames--;
}

sprite_index = _sprite[_state, _directionFacing];

event_user(_state);