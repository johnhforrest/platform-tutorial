init_movement_object();
snap_to_vgrid(false);

// Sprite state
_xScale = image_xscale;
_yScale = image_yscale;
_prevY = 0;

// Movement
_directionFacing = DIRECTION.RIGHT;
_maxHorizontalSpeed = 16;
_dashLength = 15;
_jumpHeight = -14;
_doubleJumpAvailable = false;
_wallSlideSpeed = 5;
_wallSliding = false;

// Life
_maxHitPoints = 3;
_hitPoints = _maxHitPoints;
_invincibilityFrames = 0;
_invincibilityInterval = 8;

// Attacking
_attackPower = 2;
_knockbackAmount = 8;
_knockbackDuration = game_get_speed(gamespeed_fps) / 4;
_cooldown = 0;
_cooldownReset = 7;

// Player state
_state = PLAYER_STATES.DEFAULT;

enum PLAYER_STATES {
    DEFAULT,    // 0
    KNOCKBACK,  // 1
    DASHING,    // 2
    FROZEN,     // 3
    DEAD,       // 4
    SLAM,       // 5
    ATTACK     // 6
};

// Sprite lookup table
_sprite[PLAYER_STATES.DEFAULT, DIRECTION.RIGHT] = spr_player_right;
_sprite[PLAYER_STATES.DEFAULT, DIRECTION.UP] = spr_player_right;
_sprite[PLAYER_STATES.DEFAULT, DIRECTION.LEFT] = spr_player_right;
_sprite[PLAYER_STATES.DEFAULT, DIRECTION.DOWN] = spr_player_right;

_sprite[PLAYER_STATES.KNOCKBACK, DIRECTION.RIGHT] = spr_player_right;
_sprite[PLAYER_STATES.KNOCKBACK, DIRECTION.UP] = spr_player_right;
_sprite[PLAYER_STATES.KNOCKBACK, DIRECTION.LEFT] = spr_player_right;
_sprite[PLAYER_STATES.KNOCKBACK, DIRECTION.DOWN] = spr_player_right;

_sprite[PLAYER_STATES.DASHING, DIRECTION.RIGHT] = spr_player_right;
_sprite[PLAYER_STATES.DASHING, DIRECTION.UP] = spr_player_right;
_sprite[PLAYER_STATES.DASHING, DIRECTION.LEFT] = spr_player_right;
_sprite[PLAYER_STATES.DASHING, DIRECTION.DOWN] = spr_player_right;

_sprite[PLAYER_STATES.FROZEN, DIRECTION.RIGHT] = spr_player_right;
_sprite[PLAYER_STATES.FROZEN, DIRECTION.UP] = spr_player_right;
_sprite[PLAYER_STATES.FROZEN, DIRECTION.LEFT] = spr_player_right;
_sprite[PLAYER_STATES.FROZEN, DIRECTION.DOWN] = spr_player_right;

_sprite[PLAYER_STATES.SLAM, DIRECTION.RIGHT] = spr_player_right;
_sprite[PLAYER_STATES.SLAM, DIRECTION.UP] = spr_player_right;
_sprite[PLAYER_STATES.SLAM, DIRECTION.LEFT] = spr_player_right;
_sprite[PLAYER_STATES.SLAM, DIRECTION.DOWN] = spr_player_right;

_sprite[PLAYER_STATES.ATTACK, DIRECTION.RIGHT] = spr_player_attack_right;
_sprite[PLAYER_STATES.ATTACK, DIRECTION.UP] = spr_player_attack_up;
_sprite[PLAYER_STATES.ATTACK, DIRECTION.LEFT] = spr_player_attack_right;
_sprite[PLAYER_STATES.ATTACK, DIRECTION.DOWN] = spr_player_attack_down;