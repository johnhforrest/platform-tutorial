/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_rectangle(x, y, x + _width, y + (_optionsHeight * ds_list_size(_options)), true);

for (var i = 0; i < ds_list_size(_options); i++)
{
    if (i == _optionsIndex)
    {
        draw_set_colour(c_white);
        draw_rectangle(x, y + (_optionsHeight * i), x + _width, y + (_optionsHeight * (i + 1)), false);
        draw_set_color(c_black);
    }
    else
    {
        draw_set_color(c_white);
        draw_rectangle(x, y + (_optionsHeight * i), x + _width, y + (_optionsHeight * (i + 1)), true);
    }
    
    draw_text(x + _optionsPadding, y + (i * _optionsHeight) + _optionsPadding, _options[| i]);
}