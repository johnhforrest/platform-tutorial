/// @function tile_hcollision(tileMap)
/// @description Detects if there is a horizontal collision 
/// @param tileMap the tileMap to check the collision
/// @param hSpeed the horizontal Speed
/// @returns {bool} whether there is a horizontal collision using the object's bounding box and _horizontalSpeed

var tileMap = argument0;
var hSpeed = argument1;
var boundingBoxOffset = (hSpeed > 0 ? bbox_right : bbox_left) + hSpeed;
return (tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_top) != 0) || (tilemap_get_at_pixel(tileMap, boundingBoxOffset, bbox_bottom) != 0);