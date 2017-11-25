/// @description Attack state

move_horizontally();
move_vertically(0, true);

if animation_hit_frame(image_number - 1) {
    image_speed = 0;
    sprite_index = spr_player_right;
    _horizontalSpeed = 0;
	_state = PLAYER_STATES.DEFAULT;
}