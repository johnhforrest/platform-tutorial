/// @description Draw player health

for (var i = 0; i < _hitPoints; i++)
{
    draw_sprite(spr_heart, 0, TILE_SIZE + (i * TILE_SIZE), TILE_SIZE);
}

for (var i = _hitPoints; i < _maxHitPoints; i++)
{
    draw_sprite(spr_heart, 1, TILE_SIZE + (i * TILE_SIZE), TILE_SIZE);
}