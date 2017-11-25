/// @description Dashing state

move_horizontally();

// If there was a collision when dashing, reset dash state
if (_horizontalSpeed == 0) {
    obj_game._abilities[ABILITIES.DASH] = 0;
}

// State counter
if (obj_game._abilities[ABILITIES.DASH] > 0) {
    obj_game._abilities[ABILITIES.DASH]--;
    
    with (instance_create_layer(x, y, "Player", obj_fade_out)) {
        sprite_index = other.sprite_index;
        image_index = other.image_index;
        image_xscale = other.image_xscale;
    }
} else {
    _state = PLAYER_STATES.DEFAULT;
}