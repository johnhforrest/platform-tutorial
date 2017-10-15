/// @description Insert description here

if (mode != TRANSITION_MODE.OFF)
{
    draw_set_color(c_black);
    
    // drawing the top rectangle
    draw_rectangle(0, 0, guiWidth, percent * guiHeightHalf, false);
    
    // drawing the bottom rectangle
    draw_rectangle(0, guiHeight, guiWidth, guiHeight - (percent * guiHeightHalf), false);
}