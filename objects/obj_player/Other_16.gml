/// @description Attack state

if animation_hit_frame(image_number - 1) {
    sprite_index = spr_player_right;
	_state = PLAYER_STATES.DEFAULT;
}

move_horizontally();
move_vertically(0, true);
set_sprite_scale();