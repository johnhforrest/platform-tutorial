/// @description Drawing the background image

if (sprite_exists(_pauseSprite))
{
    draw_sprite_ext(
        _pauseSprite,
        0,
        0,
        0,
        1,
        1,
        0,
        _pauseColor,
        1);
        
    draw_set_color(c_white);
    
    var _width = display_get_gui_width();
    var _height = display_get_gui_height();
    //draw_rectangle(TILE_SIZE, TILE_SIZE, _width - TILE_SIZE, _height - TILE_SIZE, true);
}
