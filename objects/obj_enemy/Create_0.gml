/// @description Setting up the enemy object

event_inherited();
snap_to_vgrid(true);

// Movement
_walkSpeed = 2;
_horizontalSpeed = _walkSpeed;

// Enemy state
_attackPower = 1;
_hitPoints = 8;
_maxHitPoints = _hitPoints;
_knockbackAmount = 8;