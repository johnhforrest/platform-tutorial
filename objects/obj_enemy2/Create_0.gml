/// @description Setting up the enemy object

event_inherited();
snap_to_vgrid(true);

// Movement
_walkSpeed = 3;
_bounceHeight = -8;
_horizontalSpeed = _walkSpeed;
_aggroRadius = 400;

// Life
_attackPower = 0;
_hitPoints = 800;
_maxHitPoints = _hitPoints;
_knockbackAmount = 16;