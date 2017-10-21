/// @description Setting up the enemy object

// Movement related members
_horizontalSpeed = 4;
_tileMap = layer_tilemap_get_id("WallTiles");

// obj_enemy specific members
_hitPoints = 2;
_flash = 0;
_hitFrom = 0;

// Snap enemy to the grid
y = y - (y % TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);