/// @description Set up player object

// Movement
_horizontalSpeed = 0;
_verticalSpeed = 0;
_selfGravity = 0.5;
_walkSpeed = 4;
_timer = true;
_tileMap = layer_tilemap_get_id("WallTiles");

// Life
_maxHitPoints = 5;
_hitPoints = _maxHitPoints;

// Attacking
_attackPower = 2;
_cooldown = 0;
_cooldownReset = 10;

// Dashing
_dashLength = 15;

// Jumping
_jumpHeight = -12;
_doubleJumpAvailable = false;

_state = STATES.DEFAULT;
enum STATES
{
    DEFAULT,
    HIT,
    DASHING,
    FROZEN
}

_abilities = array_create(ABILITIES.COUNT, -1);
enum ABILITIES
{
    NONE,
    DASH,
    DOUBLEJUMP,
    
    COUNT
};

// Snap player to the grid
y = y - (y % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);