/// @description Unpaused state

sprite_delete(_pauseSprite);
instance_destroy(obj_menu);
        
_pauseSprite = noone;
instance_activate_all();

_state = PAUSE_STATES.WAITING;
_previousState = PAUSE_STATES.UNPAUSED;