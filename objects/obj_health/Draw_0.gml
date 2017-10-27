/// @description Draw players health

// TODO: Change this to a Draw GUI event

if (!instance_exists(obj_player))
{
    return;
}

x = camera_get_view_x(_camera) + TILE_SIZE;
y = camera_get_view_y(_camera) + TILE_SIZE;

for (var i = 0; i < obj_player._hitPoints; i++)
{
    draw_sprite(spr_heart, 0, x + (i * TILE_SIZE), y);
}

for (var i = obj_player._hitPoints; i < obj_player._maxHitPoints; i++)
{
    draw_sprite(spr_heart, 1, x + (i * TILE_SIZE), y);
}