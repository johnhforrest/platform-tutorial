/// @function tile_vcollision(tileMap)
/// @description Detects if there is a horizontal collision 
/// @param tileMap the tileMap to check the collision
/// @param vSpeed the vertical speed
/// @returns {bool} whether there is a horizontal collision using the object's bounding box

var tileMap = argument0;
var vSpeed = argument1;
var boundingBoxOffset = (vSpeed > 0 ? bbox_bottom : bbox_top) + vSpeed;
return (tilemap_get_at_pixel(tileMap, bbox_left, boundingBoxOffset) != 0) || (tilemap_get_at_pixel(tileMap, bbox_right, boundingBoxOffset) != 0);