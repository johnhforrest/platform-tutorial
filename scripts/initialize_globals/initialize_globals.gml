global._targetRoom = noone;
global._targetMarker = -1;
global._pickups = ds_map_create();

display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

// Create health and transition objects
if (!instance_exists(obj_game))
{
    instance_create_layer(x, y, "Player", obj_game);
    instance_create_layer(x, y, "Player", obj_transition);
    instance_create_layer(x, y, "Player", obj_camera);
}

room_goto_next();