/// @description Paused state

// TODO: This method doesn't capture GUI elements (e.g., hearts)
_pauseSprite = 
    sprite_create_from_surface(
        application_surface, 
        0,
        0,
        obj_camera._width,
        obj_camera._height,
        false,
        false,
        0,
        0);
        
_playerHitPoints = obj_player._hitPoints;
_playerMaxHitPoints = obj_player._maxHitPoints;

instance_deactivate_all(true);
instance_create_layer(TILE_SIZE * 2, TILE_SIZE * 2, "Player", obj_menu);

_state = PAUSE_STATES.WAITING;
_previousState = PAUSE_STATES.PAUSED;