/// @description Drawing the text after being picked up

draw_self();

if (_pickedUp)
{
    draw_text(x - 120, y - 60, "You now have the ability to double jump.");
}