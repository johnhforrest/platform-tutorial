/// @description Setting up the enemy object

event_inherited();
snap_to_vgrid(true);

// Movement
_walkSpeed = 2;
_horizontalSpeed = _walkSpeed;

// Life
_hitPoints = 4;

// Attack
_attackPower = 1;

_state = STATES.DEFAULT;