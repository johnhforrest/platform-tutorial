/// @function draw_health
/// @param {number} xPos x position
/// @param {number} yPos y position
/// @param {number} hitPoints Current number of hit points
/// @param {number} maxHitPoints Maximum number of hit points

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