/// @description Set up player object

_horizontalSpeed = 0;
_verticalSpeed = 0;
_selfGravity = 0.5;
_timer = true;
_tileMap = layer_tilemap_get_id("WallTiles");

// obj_player specific members
_walkSpeed = 4;
_jumpHeight = -12;
_doubleJumpAvailable = false;
_onTheGround = false;
_hasControl = true;
_abilityLevel = PLAYER_ABILITIES.NONE;

enum PLAYER_ABILITIES
{
    NONE,
    DOUBLEJUMP
};