/// @description Drawing the background image

if (_paused && sprite_exists(_pauseSprite))
{
    draw_sprite(_pauseSprite, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));
}
