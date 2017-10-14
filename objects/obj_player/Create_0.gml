// Members required for scr_movement
horizontalSpeed = 0;
verticalSpeed = 0;
selfGravity = 0.5;
timer = true;
tileMap = layer_tilemap_get_id("WallTiles");

// obj_player specific members
walkSpeed = 4;
doubleJumpAvailable = false;
jumpHeight = -8;
onTheGround = false;