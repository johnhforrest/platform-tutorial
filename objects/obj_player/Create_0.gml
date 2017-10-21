/// @description Set up player object

// General movement related members
_horizontalSpeed = 0;
_verticalSpeed = 0;
_selfGravity = 0.5;
_walkSpeed = 4;
_timer = true;
_tileMap = layer_tilemap_get_id("WallTiles");

// obj_player specific members
_attackPower = 2;
_cooldown = 0;
_cooldownReset = 10;

_jumpHeight = -12;
_doubleJumpAvailable = false;
_onTheGround = false;
_hasControl = true;
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