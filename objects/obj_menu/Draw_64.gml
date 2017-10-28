/// @description Drawing the menu

// Drawing the options menu
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

// Drawing player stats
var xPos = (_width * 2);
var yPos = y;
draw_set_color(c_white);
draw_text(xPos - 8, yPos, "Health");
draw_text(xPos - 8, yPos + 80, "Abilities");

draw_health(xPos, yPos + 40, obj_game._playerHitPoints, obj_game._playerMaxHitPoints);

var abilities = 1;
for (var i = 0; i < ABILITIES.COUNT; i++)
{
    if (obj_game._abilities[i] >= 0)
    {
        var yOffset = yPos + 80 + (40 * abilities);
        draw_sprite(spr_ability_pickup, 0, xPos, yOffset);
        
        var abilityText;
        switch (i)
        {
            case ABILITIES.DOUBLEJUMP:
                abilityText = "Double jump";
                break;
            
            case ABILITIES.DASH:
                abilityText = "Dash";
                break;
        }
        
        draw_text(xPos + TILE_SIZE, yOffset - 10, abilityText);
        abilities++;
    }
}