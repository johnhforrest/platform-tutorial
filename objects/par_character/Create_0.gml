/// @description Setting up character object

// Movement
_horizontalSpeed = 0;
_verticalSpeed = 0;
_selfGravity = 0.5;
_walkSpeed = 4;
_timer = true;
_tileMap = layer_tilemap_get_id("WallTiles");

enum STATES
{
    DEFAULT,
    KNOCKBACK,
    DASHING,
    FROZEN,
    DEAD
}