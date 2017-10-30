/// @description Drawing the stranger

if (instance_exists(obj_player) && obj_player.x < x)
{
    sprite_index = spr_stranger_left;
}
else
{
    sprite_index = spr_stranger;
}

if (_talking)
{
    draw_set_color(c_black);
    draw_set_halign(fa_center);
    draw_text(x, y - (TILE_SIZE * 2), "Hello there. (press A to continue)");
}

draw_self();