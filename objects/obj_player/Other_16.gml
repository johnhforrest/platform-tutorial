/// @description Attack state

// Continue moving in the attack state for knockback during attack
move_horizontally();
move_vertically(0, true);

_horizontalSpeed = approach(_horizontalSpeed, 0, _friction);
_verticalSpeed = approach(_verticalSpeed, 0, _friction);

if (animation_hit_frame(1)) {
    var angle_ = _directionFacing * 90;
    var hitbox_ = create_hitbox(spr_attack, x, y, angle_, 3, [], _attackPower, _knockbackAmount);
}

if (animation_hit_frame(image_number - 1)) {
    image_speed = 0;
    sprite_index = spr_player_right;
    _horizontalSpeed = 0;
	_state = PLAYER_STATES.DEFAULT;
}