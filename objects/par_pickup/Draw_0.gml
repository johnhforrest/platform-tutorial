/// @description Drawing the text after being picked up

draw_self();

if (_pickedUp)
{
    draw_set_color(c_black);
    
    switch (_abilityIndex)
    {
        case ABILITIES.DASH:
            draw_text(x - 120, y - 60, "You now have the ability to dash.");
            break;
            
        case ABILITIES.DOUBLEJUMP:
            draw_text(x - 120, y - 60, "You now have the ability to double jump.");
            break;
            
        default:
            draw_text(x - 120, y - 60, "You gained an extra heart container!");
            break;
    }
    
    draw_set_color(c_white);
}