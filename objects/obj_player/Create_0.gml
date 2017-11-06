/// @description Set up player object

event_inherited();
snap_to_vgrid(true);

// Life
_maxHitPoints = 3;
_hitPoints = _maxHitPoints;
_invincibilityFrames = 0;
_invincibilityInterval = 8;

// Attacking
_attackPower = 2;
_cooldown = 0;
_cooldownReset = 10;

// Dashing
_dashLength = 15;

// Jumping
_jumpHeight = -12;
_doubleJumpAvailable = false;