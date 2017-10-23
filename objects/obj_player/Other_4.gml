/// @description Initialization for when a new room starts

_state = STATES.DEFAULT;
_tileMap = layer_tilemap_get_id("WallTiles");

// Create health and transition objects
instance_create_layer(x, y, "Player", obj_health);
instance_create_layer(x, y, "Player", obj_transition);