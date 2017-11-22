/// @description Attack state

if animation_hit_frame(image_number - 1) {
    sprite_index = spr_player_right;
	_state = STATES.DEFAULT;
}

move_horizontally();
move_vertically();
set_sprite_scale();