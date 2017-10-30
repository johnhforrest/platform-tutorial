/// @description Setting up the enemy object

event_inherited();

// Movement
_walkSpeed = 2;
_horizontalSpeed = _walkSpeed;

// Life
_hitPoints = 4;

// Attack
_attackPower = 1;

_state = STATES.DEFAULT;

// Snap enemy to the grid
y = y - (y % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);