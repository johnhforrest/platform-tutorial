/// @description Set up player object

event_inherited();
snap_to_vgrid(true);

// Movement
_maxHorizontalSpeed = 6;
_acceleration = 1.3;
_friction = 0.3;
_directionFacing = DIRECTION.RIGHT;

// Life
_maxHitPoints = 3;
_hitPoints = _maxHitPoints;
_invincibilityFrames = 0;
_invincibilityInterval = 8;

// Attacking
_attackPower = 2;
_cooldown = 0;
_cooldownReset = 7;

// Dashing
_dashLength = 15;

// Jumping
_jumpHeight = -12;
_doubleJumpAvailable = false;

_sprite[STATES.DEFAULT, DIRECTION.RIGHT] = spr_player_right;
_sprite[STATES.DEFAULT, DIRECTION.UP] = spr_player_right;
_sprite[STATES.DEFAULT, DIRECTION.LEFT] = spr_player_right;
_sprite[STATES.DEFAULT, DIRECTION.DOWN] = spr_player_right;

_sprite[STATES.DASHING, DIRECTION.RIGHT] = spr_player_right;
_sprite[STATES.DASHING, DIRECTION.UP] = spr_player_right;
_sprite[STATES.DASHING, DIRECTION.LEFT] = spr_player_right;
_sprite[STATES.DASHING, DIRECTION.DOWN] = spr_player_right;

_sprite[STATES.FROZEN, DIRECTION.RIGHT] = spr_player_right;
_sprite[STATES.FROZEN, DIRECTION.UP] = spr_player_right;
_sprite[STATES.FROZEN, DIRECTION.LEFT] = spr_player_right;
_sprite[STATES.FROZEN, DIRECTION.DOWN] = spr_player_right;

_sprite[STATES.SLAM, DIRECTION.RIGHT] = spr_player_right;
_sprite[STATES.SLAM, DIRECTION.UP] = spr_player_right;
_sprite[STATES.SLAM, DIRECTION.LEFT] = spr_player_right;
_sprite[STATES.SLAM, DIRECTION.DOWN] = spr_player_right;

_sprite[STATES.ATTACK, DIRECTION.RIGHT] = spr_player_attack_right;
_sprite[STATES.ATTACK, DIRECTION.UP] = spr_player_attack_up;
_sprite[STATES.ATTACK, DIRECTION.LEFT] = spr_player_attack_right;
_sprite[STATES.ATTACK, DIRECTION.DOWN] = spr_player_attack_down;