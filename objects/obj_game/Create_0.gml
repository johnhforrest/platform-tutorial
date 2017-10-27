/// @description Setup game object

_previousState = PAUSE_STATES.UNPAUSED;
_state = PAUSE_STATES.WAITING;
_pauseSprite = noone;
_pauseColor = make_color_rgb(5, 5, 5);

_abilities = array_create(ABILITIES.COUNT, -1);

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