/// @description Setting up the enemy parent

init_movement_object();
snap_to_vgrid(true);

// Sprite state
_xScale = image_xscale;
_yScale = image_yscale;
_tempY = 0;

_state = PLAYER_STATES.DEFAULT;
_knockbackAmount = 8;