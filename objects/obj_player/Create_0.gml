/// @description Set up player object

event_inherited();

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

// Player state
_state = STATES.DEFAULT;

enum STATES
{
    DEFAULT,
    KNOCKBACK,
    DASHING,
    FROZEN,
    DEAD
}

// Snap player to the grid
y = y - (y % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);

global.debug_num_attacks = 0;