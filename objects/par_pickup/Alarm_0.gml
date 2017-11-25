/// @description Destroys the instances and gives the player control back

with (obj_player) {
    _state = PLAYER_STATES.DEFAULT;
}

instance_destroy();