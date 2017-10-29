/// @description Setup game object

_previousState = PAUSE_STATES.UNPAUSED;
_state = PAUSE_STATES.WAITING;

// Game data
_targetRoom = noone;
_targetMarker = -1;
_pickups = ds_map_create();

// Pause data
_pauseSprite = noone;
_pauseColor = make_color_rgb(5, 5, 5);

// TODO: better data-structures for this data copy
// Player data
_playerHitPoints = 0;
_playerMaxHitPoints = 0;
_abilities = array_create(ABILITIES.COUNT, -1);

// Creating other persistent objects
instance_create_layer(x, y, "Player", obj_input);
instance_create_layer(x, y, "Player", obj_camera);
instance_create_layer(x, y, "Player", obj_transition);

enum PAUSE_STATES
{
    UNPAUSED,
    PAUSED,
    WAITING
}

enum ABILITIES
{
    NONE,
    DASH,
    DOUBLEJUMP,
    COUNT
};

show_debug_message("Created obj_game");