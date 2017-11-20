/// @description Setting up character object

// Sprite state
_xScale = image_xscale;
_yScale = image_yscale;
_tempY = 0;

// Movement
_horizontalSpeed = 0;
_verticalSpeed = 0;
_selfGravity = 0.5;
_walkSpeed = 4;
_timer = true;
_tileMap = layer_tilemap_get_id("WallTiles");

// Object state
_state = STATES.DEFAULT;

enum STATES
{
    DEFAULT,    // 0
    KNOCKBACK,  // 1
    DASHING,    // 2
    FROZEN,     // 3
    DEAD,       // 4
    SLAM,       // 5
    ATTACK      // 6
}