/// @description Setting up the enemy object

// Movement
_walkSpeed = 4;
_horizontalSpeed = _walkSpeed;
_tileMap = layer_tilemap_get_id("WallTiles");

// Life
_hitPoints = 6;

// Attack
_attackPower = 2;

_state = ENEMY_STATES.DEFAULT;
enum ENEMY_STATES
{
    DEFAULT,
    HIT,
    DEAD
}

// Snap enemy to the grid
y = y - (y % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);