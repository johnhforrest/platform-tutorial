/// @description Setup game object

_previousState = PAUSE_STATES.UNPAUSED;
_state = PAUSE_STATES.WAITING;

// Game data
_targetMarker = -1;
_groundShakeTheshold = 20;
_pickups = ds_map_create();

// Pause data
_pauseSprite = noone;
_pauseColor = make_color_rgb(5, 5, 5);

// TODO: better data-structures for this data copy
// Player data
_playerHitPoints = 0;
_playerMaxHitPoints = 0;
_abilities = array_create(ABILITIES.COUNT, -1);

// Particles
_particleSystem = part_system_create_layer("Player", true);
part_system_depth(_particleSystem, 600);

_dustParticle = part_type_create();
part_type_shape(_dustParticle, pt_shape_smoke);
part_type_size(_dustParticle, 0.5, 0.7, 0.05, .1);
part_type_scale(_dustParticle, 0.5, 0.5);
part_type_life(_dustParticle, 10, 10);
part_type_color1(_dustParticle, c_gray);
part_type_alpha1(_dustParticle, 0.5);

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