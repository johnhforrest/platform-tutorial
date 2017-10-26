global._targetRoom = noone;
global._targetMarker = -1;
global._pickups = ds_map_create();

// Create health and transition objects
if (!instance_exists(obj_game))
{
    instance_create_layer(x, y, "Player", obj_game);
    instance_create_layer(x, y, "Player", obj_health);
    instance_create_layer(x, y, "Player", obj_transition);
}

room_goto_next();