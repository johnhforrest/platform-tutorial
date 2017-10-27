/// @description Listening for pause action

if (gamepad_button_check_pressed(0, gp_start))
{
    if (_paused)
    {
        sprite_delete(_pauseSprite);
        _pauseSprite = noone;
        instance_activate_all();
    }
    else
    {
        // TODO: We need a screenshot the size of the viewport and not the camera but haven't figured out how to do it
        _pauseSprite = 
            sprite_create_from_surface(
                application_surface, 
                0,
                0,
                camera_get_view_width(view_camera[0]),
                camera_get_view_height(view_camera[0]),
                false,
                false,
                0,
                0);
                
        instance_deactivate_all(true);
    }
    
    _paused = !_paused;
}
