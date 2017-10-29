display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

// Create the global game object
if (!instance_exists(obj_game))
{
    instance_create_layer(x, y, "Player", obj_game);
}

show_debug_message("Game initialized. Starting...");
room_goto(room_one);