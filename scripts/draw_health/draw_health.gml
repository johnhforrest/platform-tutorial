var xPos = argument0;
var yPos = argument1;
var hitPoints = argument2;
var maxHitPoints = argument3;

for (var i = 0; i < hitPoints; i++)
{
    draw_sprite(spr_heart, 0, xPos + (i * TILE_SIZE), yPos);
}

for (var i = hitPoints; i < maxHitPoints; i++)
{
    draw_sprite(spr_heart, 1, xPos + (i * TILE_SIZE), yPos);
}